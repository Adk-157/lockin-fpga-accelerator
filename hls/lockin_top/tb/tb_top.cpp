// Self-checking testbench for lockin_top.
//   reference = independent C pipeline (ref_pipe.c)  +  the user's ORIGINAL adaptive_ctrl (adaptive mode)
//               + an independent fixed-bandwidth averager (fixed mode)
// Every decimated output is compared field by field (FIR outputs, k, averaged I/Q, CORDIC / LUT / poly
// results) against the top's log record and live registers.
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include <cstring>
#include <cmath>
#include <vector>
#include "lockin_top.h"
#include "ctrl_hls.h"            // original controller = reference for adaptive mode

struct RefT;
extern "C" {
RefT *ref_new(void);
void ref_reset(RefT *, uint32_t seed);
int  ref_step(RefT *, int use_ext, int16_t x_ext, uint32_t ph_ref, uint32_t ph_sig, uint32_t ph_off,
              int16_t amp, uint16_t sigma, int32_t *yI, int32_t *yQ, int16_t *x_out);
void ref_extract(int16_t x, int16_t y, uint16_t *cm, int32_t *ca, uint16_t *lm, int32_t *la, uint16_t *pm, int32_t *pa);
}

static ap_int<32> logm[LOG_WORDS];
static long long g_fail = 0, g_checked = 0;

struct Out { ap_uint<32> oc, ln, st; ap_uint<5> k; ap_int<32> mi, mq; ap_uint<16> mag; };

static Out call(uint32_t ctl, int kfix, uint32_t pr, uint32_t ps, uint32_t po, int amp, int sigma, uint32_t seed,
                int every, int xext)
{
    Out o;
    lockin_top(ctl, kfix, pr, ps, po, (int16_t)amp, (uint16_t)sigma, seed, every, (int16_t)xext,
               o.oc, o.ln, o.st, o.k, o.mi, o.mq, o.mag, logm);
    return o;
}

static inline int64_t rnd_shift(int64_t v, int sh) { return (v + ((int64_t)1 << (sh - 1))) >> sh; }
static inline int32_t clamp16(int64_t v) { return (int32_t)(v > 32767 ? 32767 : (v < -32768 ? -32768 : v)); }
static uint32_t hash32(uint32_t h) { h ^= h >> 16; h *= 0x7feb352du; h ^= h >> 15; h *= 0x846ca68bu; h ^= h >> 16; return h; }

// independent fixed-bandwidth averager (same warm-up rule as the controller: 64 skipped + 32 + 32 samples)
struct FixedAvg {
    long long n = 0; int64_t zI = 0, zQ = 0;
    void reset() { n = 0; zI = zQ = 0; }
    void step(int32_t I, int32_t Q, int kfix) {
        n++;
        if (n < 128) return;
        long long m = n - 127; int lg = 0; while ((m >> (lg + 1)) > 0) lg++;
        int k = kfix > 20 ? 20 : kfix; int s = k < lg ? k : lg;
        int64_t half = ((int64_t)1 << s) >> 1;
        zI += (((int64_t)I << 22) - zI + half) >> s;
        zQ += (((int64_t)Q << 22) - zQ + half) >> s;
    }
};

struct Case {
    const char *name; long long N; bool adapt; int kfix;
    uint32_t pr, ps, po; int amp, sigma; uint32_t seed;
    int ext;           // 0 = generated tone+noise, 1 random full range, 2 const -32768, 3 const +32767, 4 alt +-full, 5 sparse impulses
    bool midreset;
};

static void report(const char *name, const char *what, long long idx, long long got, long long want)
{
    if (g_fail < 12) std::printf("  MISMATCH [%s] output %lld: %s got %lld want %lld\n", name, idx, what, got, want);
    g_fail++;
}

static void run_case(const Case &c)
{
    RefT *r = ref_new(); ref_reset(r, c.seed);
    FixedAvg fx;
    k_t kk; z_t zi, zq;
    adaptive_ctrl(true, false, 0, 0, kk, zi, zq);                    // reset original controller
    long long nout = 0, bad0 = g_fail;
    const uint32_t base = (c.adapt ? CTL_ADAPT : 0) | CTL_LOG_EN | CTL_LOG_CLR | (c.ext ? CTL_USE_EXT : 0);
    // reset the DUT
    for (int i = 0; i < 3; i++) call(base | CTL_RST, c.kfix, c.pr, c.ps, c.po, c.amp, c.sigma, c.seed, 1, 0);
    for (long long i = 0; i < c.N; i++) {
        if (c.midreset && i == c.N / 3) {
            for (int j = 0; j < 3; j++) call(base | CTL_RST, c.kfix, c.pr, c.ps, c.po, c.amp, c.sigma, c.seed, 1, 0);
            ref_reset(r, c.seed); fx.reset(); adaptive_ctrl(true, false, 0, 0, kk, zi, zq); nout = 0;
        }
        int xe = 0;
        switch (c.ext) {
            case 1: xe = (int16_t)(hash32((uint32_t)i * 2654435761u + c.seed) >> 7); break;
            case 2: xe = -32768; break;
            case 3: xe = 32767; break;
            case 4: xe = (i & 1) ? -32768 : 32767; break;
            case 5: xe = (i % 301 == 0) ? 32767 : ((i % 997 == 0) ? -32768 : 0); break;
        }
        Out o = call(base, c.kfix, c.pr, c.ps, c.po, c.amp, c.sigma, c.seed, 1, xe);
        int32_t yI = 0, yQ = 0; int16_t xo;
        int v = ref_step(r, c.ext != 0, (int16_t)xe, c.pr, c.ps, c.po, (int16_t)c.amp, (uint16_t)c.sigma, &yI, &yQ, &xo);
        if (!v) { g_checked++; if ((long long)o.oc != nout) report(c.name, "out_count (idle call)", i, (long long)o.oc, nout); continue; }
        nout++;
        int kexp; int64_t zI, zQ;
        if (c.adapt) {
            k_t k; z_t a, b; adaptive_ctrl(false, true, (in_t)yI, (in_t)yQ, k, a, b);
            kexp = (int)k; zI = a.to_int64(); zQ = b.to_int64();
        } else {
            fx.step(yI, yQ, c.kfix); kexp = c.kfix > 20 ? 20 : c.kfix; zI = fx.zI; zQ = fx.zQ;
        }
        int16_t xi = (int16_t)clamp16(rnd_shift(zI, 22)), xq = (int16_t)clamp16(rnd_shift(zQ, 22));
        uint16_t cm, lm, pm; int32_t ca, la, pa; ref_extract(xi, xq, &cm, &ca, &lm, &la, &pm, &pa);
        int64_t mI8 = rnd_shift(zI, 14), mQ8 = rnd_shift(zQ, 14);
        const ap_int<32> *L = logm;      // log_clr every call -> record 0 holds the newest output
        struct F { const char *n; long long got, want; } f[] = {
            {"log.count", (long long)L[0], nout},
            {"log.yI", (long long)L[1], yI}, {"log.yQ", (long long)L[2], yQ},
            {"log.k", (long long)L[3], kexp},
            {"log.mI8", (long long)L[4], mI8}, {"log.mQ8", (long long)L[5], mQ8},
            {"log.cordic", (long long)(uint32_t)L[6], (long long)(((uint32_t)(uint16_t)ca << 16) | cm)},
            {"log.lut",    (long long)(uint32_t)L[7], (long long)(((uint32_t)(uint16_t)la << 16) | lm)},
            {"log.poly.mag", (long long)L[8], pm}, {"log.poly.ang", (long long)L[9], pa},
            {"log.w12-15", (long long)L[12] | (long long)L[13] | (long long)L[14] | (long long)L[15], 0},
            {"reg.out_count", (long long)o.oc, nout}, {"reg.log_n", (long long)o.ln, 1},
            {"reg.k_now", (long long)o.k, kexp}, {"reg.mI", (long long)o.mi, mI8}, {"reg.mQ", (long long)o.mq, mQ8},
            {"reg.mag", (long long)o.mag, cm},
        };
        for (auto &t : f) { g_checked++; if (t.got != t.want) report(c.name, t.n, nout, t.got, t.want); }
        // sanity on the exposed SNR estimate (no exact reference available): never negative
        if (L[10] < 0 || L[11] < 0) report(c.name, "vm16/sig negative", nout, (long long)L[10], 0);
    }
    std::printf("%-34s N=%-7lld outputs=%-5lld %s\n", c.name, c.N, nout, g_fail == bad0 ? "PASS" : "FAIL");
}

// ---- log mechanics: log_every, stop when full, log_clr restarts --------------------------------
static void test_log()
{
    RefT *r = ref_new(); ref_reset(r, 77);
    k_t kk; z_t zi, zq; adaptive_ctrl(true, false, 0, 0, kk, zi, zq);
    const int EVERY = 7; const uint32_t ctl = CTL_ADAPT | CTL_LOG_EN;
    for (int i = 0; i < 3; i++) call(ctl | CTL_RST, 0, 21474836, 21474836, 0, 8192, 100, 77, EVERY, 0);
    std::vector<int32_t> ys; long long nout = 0; Out o{};
    long long limit = (long long)LOG_N * EVERY * 128 + 128 * 40;
    for (long long i = 0; i < limit; i++) {
        o = call(ctl, 0, 21474836, 21474836, 0, 8192, 100, 77, EVERY, 0);
        int32_t yI, yQ; int16_t xo;
        if (ref_step(r, 0, 0, 21474836, 21474836, 0, 8192, 100, &yI, &yQ, &xo)) { nout++; if ((nout - 1) % EVERY == 0) ys.push_back(yI); }
    }
    bool ok = (long long)o.ln == LOG_N && (long long)o.st == 1;
    for (int j = 0; j < LOG_N && ok; j++) {
        g_checked += 2;
        if ((long long)logm[j * LOG_REC] != 1 + (long long)j * EVERY || (long long)logm[j * LOG_REC + 1] != ys[j]) { ok = false; report("log_every", "record", j, (long long)logm[j * LOG_REC], 1 + (long long)j * EVERY); }
    }
    std::printf("%-34s log_n=%u status=%u records 0..%d checked   %s\n", "log_every=7, stop when full", (unsigned)o.ln, (unsigned)o.st, LOG_N - 1, ok ? "PASS" : "FAIL");
    if (!ok) g_fail++;
    // log_clr must empty the log while the lock-in keeps running
    Out p = call(ctl | CTL_LOG_CLR, 0, 21474836, 21474836, 0, 8192, 100, 77, EVERY, 0);
    long long cnt_before = (long long)o.oc;
    bool ok2 = (long long)p.oc >= cnt_before && (long long)p.ln <= 1;
    std::printf("%-34s log_n after clear=%u out_count kept=%u   %s\n", "log_clr keeps lock-in running", (unsigned)p.ln, (unsigned)p.oc, ok2 ? "PASS" : "FAIL");
    if (!ok2) g_fail++;
}

// ---- noise generator statistics (reference generator, amp = 0, no clipping) ---------------------
static void test_noise()
{
    for (int sg : {10, 100, 1000, 4000}) {
        RefT *r = ref_new(); ref_reset(r, 12345);
        const long long N = 2000000; double s1 = 0, s2 = 0, s4 = 0; long long beyond3 = 0;
        for (long long i = 0; i < N; i++) {
            int32_t a, b; int16_t x; ref_step(r, 0, 0, 0, 0, 0, 0, (uint16_t)sg, &a, &b, &x);
            double d = x; s1 += d; s2 += d * d; s4 += d * d * d * d; if (std::fabs(d) > 3.0 * sg) beyond3++;
        }
        double m = s1 / N, var = s2 / N - m * m, kurt = (s4 / N) / (var * var);
        std::printf("noise sigma_reg=%-5d mean=%+.3f std=%.2f (ratio %.4f) kurtosis=%.3f (Gaussian 3.0) beyond 3 sigma=%.4f%% (Gaussian 0.27%%)\n",
                    sg, m, std::sqrt(var), std::sqrt(var) / sg, kurt, 100.0 * beyond3 / N);
    }
}

int main(int argc, char **argv)
{
    const uint32_t F1 = 21474836u;                // 1 kHz at 200 kS/s
    Case cases[] = {
        {"tone only, adaptive",            260000, true,  0, F1, F1, 0,           8192, 0,     1,     0, false},
        {"tone + noise 60 LSB, adaptive",  400000, true,  0, F1, F1, 0,           8192, 60,    1234,  0, false},
        {"tone + noise 60 LSB, fixed k=7", 400000, false, 7, F1, F1, 0,           8192, 60,    1234,  0, false},
        {"fixed k=20 (max), phase 90deg",  400000, false, 20, F1, F1, 0x40000000, 4000, 300,   99,    0, false},
        {"fixed k=31 (clamped to 20)",     300000, false, 31, F1, F1, 0,          8192, 100,   5,     0, false},
        {"small tone 100, noise 5, adapt",  400000, true,  0, F1, F1, 0xC0000000, 100,  5,     4242,  0, false},
        {"max amp + max noise (clipping)", 300000, true,  0, F1, F1, 0,          32767, 65535, 7,    0, false},
        {"negative amp, detuned signal",   400000, true,  0, F1, F1 + 12345, 0,   -8192, 1000, 31337, 0, false},
        {"noise only (amp 0)",             400000, true,  0, F1, F1, 0,           0,    2000,  8,     0, false},
        {"high ref freq (ph near 2^31)",   260000, true,  0, 0x7FFFFFFFu, 0x7FFFFFFFu, 0, 8192, 50, 9, 0, false},
        {"ext: random full-range",         300000, true,  0, F1, F1, 0,           0,    0,     11,    1, false},
        {"ext: const -32768",              200000, true,  0, F1, F1, 0,           0,    0,     12,    2, false},
        {"ext: const +32767",              200000, true,  0, F1, F1, 0,           0,    0,     13,    3, false},
        {"ext: alternating +-full scale",  200000, true,  0, F1, F1, 0,           0,    0,     14,    4, false},
        {"ext: sparse impulses, fixed k=3", 200000, false, 3, F1, F1, 0,          0,    0,     15,    5, false},
        {"mid-run reset, adaptive",        400000, true,  0, F1, F1, 0,           8192, 60,    21,    0, true},
        {"mid-run reset, fixed k=9",       400000, false, 9, F1, F1, 0,           8192, 60,    22,    0, true},
    };
    std::printf("== lockin_top vs independent reference ==\n");
    for (auto &c : cases) run_case(c);
    test_log();
    std::printf("== noise generator statistics ==\n");
    test_noise();
    std::printf("\nTOTAL field comparisons: %lld   mismatches: %lld   => %s\n", g_checked, g_fail, g_fail ? "FAIL" : "ALL PASS");
    return g_fail ? 1 : 0;
}
