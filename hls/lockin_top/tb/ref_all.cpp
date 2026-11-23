// Reference built from the user's REAL HLS sources (ap_int): mixer_hls.cpp, dds_hls.cpp,
// cordic_hls.cpp (0 and 3 guard bits), lut_hls.cpp, poly_hls.cpp and cic_step/fir_step.
//   ref_all mix IN OUT        int16 (x,s,c) triples -> int16 (i,q) pairs
//   ref_all dds INC N OUT     int16 (sin,cos) pairs from phase 0
//   ref_all chain IN OUT      int16 samples -> int32 FIR outputs
//   ref_all ext IN PREFIX     int16 (x,y) pairs -> PREFIX.{cordic0,cordic3,lut,poly}.bin (int32 mag,ang pairs)
//   ref_all bench N           same stages and hashes as "lockin_sw bench" (no timing)
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include <cstring>
#include <vector>
#include <string>
#include "cic_fir_common.h"
#include "mixer_hls.h"
#include "dds_hls.h"
#include "cordic_hls.h"
#include "lut_hls.h"
#include "poly_hls.h"

// the 3-guard-bit CORDIC is compiled separately and renamed with -Dcordic_vectoring=cordic_vectoring_g3
void cordic_vectoring_g3(cordic_in_t x_in, cordic_in_t y_in, cordic_mag_t &mag_out, cordic_ang_t &ang_out);

static std::vector<char> slurp(const char *p)
{
    FILE *f = fopen(p, "rb"); if (!f) { perror(p); exit(2); }
    std::vector<char> v; char buf[1 << 16]; size_t n;
    while ((n = fread(buf, 1, sizeof buf, f)) > 0) v.insert(v.end(), buf, buf + n);
    fclose(f); return v;
}
template <class T> static void spit(const std::string &p, const std::vector<T> &v)
{
    FILE *f = fopen(p.c_str(), "wb"); if (!f) { perror(p.c_str()); exit(2); }
    if (!v.empty()) fwrite(v.data(), sizeof(T), v.size(), f);
    fclose(f);
}
static inline uint32_t hash32(uint32_t h)
{
    h ^= h >> 16; h *= 0x7feb352du; h ^= h >> 15; h *= 0x846ca68bu; h ^= h >> 16; return h;
}
static inline uint64_t fnv_add(uint64_t h, int32_t v)
{
    uint32_t u = (uint32_t)v;
    for (int b = 0; b < 4; b++) { h ^= (u >> (8 * b)) & 0xFF; h *= 0x100000001b3ULL; }
    return h;
}

static std::vector<int32_t> run_chain(const std::vector<int16_t> &x)
{
    CicState cs; FirState fs; cic_reset(cs); fir_reset(fs);
    std::vector<int32_t> y;
    for (size_t i = 0; i < x.size(); i++) {
        bool valid; samp_t c;
        cic_step(cs, samp_t(x[i]), valid, c);
        if (valid) y.push_back((int32_t)fir_step(fs, c).to_int());
    }
    return y;
}

// one extraction call by method id: 0 cordic g0, 1 cordic g3, 2 lut, 3 poly
static void ext_call(int k, int16_t x, int16_t y, int32_t &mag, int32_t &ang)
{
    if (k == 0) { cordic_mag_t m; cordic_ang_t a; cordic_vectoring(cordic_in_t(x), cordic_in_t(y), m, a); mag = (int32_t)m.to_uint(); ang = (int32_t)a.to_int(); }
    if (k == 1) { cordic_mag_t m; cordic_ang_t a; cordic_vectoring_g3(cordic_in_t(x), cordic_in_t(y), m, a); mag = (int32_t)m.to_uint(); ang = (int32_t)a.to_int(); }
    if (k == 2) { lut_mag_t m; lut_ang_t a; lut_vectoring(xy_in_t(x), xy_in_t(y), m, a); mag = (int32_t)m.to_uint(); ang = (int32_t)a.to_int(); }
    if (k == 3) { poly_mag_t m; poly_ang_t a; poly_vectoring(xy_in_t(x), xy_in_t(y), m, a); mag = (int32_t)m.to_uint(); ang = (int32_t)a.to_int(); }
}

int main(int argc, char **argv)
{
    std::string m = argc > 1 ? argv[1] : "";
    if (m == "mix" && argc == 4) {
        std::vector<char> b = slurp(argv[2]); const int16_t *t = (const int16_t *)b.data(); size_t n = b.size() / 6;
        std::vector<int16_t> o(2 * n);
        for (size_t k = 0; k < n; k++) {
            bool v; mix_t i, q;
            mixer(true, adc_t(t[3*k]), ref_t(t[3*k+1]), ref_t(t[3*k+2]), v, i, q);
            o[2*k] = (int16_t)i.to_int(); o[2*k+1] = (int16_t)q.to_int();
        }
        spit(argv[3], o); return 0;
    }
    if (m == "dds" && argc == 5) {
        uint32_t inc = (uint32_t)strtoull(argv[2], 0, 0); size_t n = strtoull(argv[3], 0, 10);
        std::vector<int16_t> o(2 * n);
        for (size_t k = 0; k < n; k++) {
            dds_out_t s, c; dds_sincos(k == 0, phase_t(inc), s, c);
            o[2*k] = (int16_t)s.to_int(); o[2*k+1] = (int16_t)c.to_int();
        }
        spit(argv[4], o); return 0;
    }
    if (m == "chain" && argc == 4) {
        std::vector<char> b = slurp(argv[2]); const int16_t *p = (const int16_t *)b.data();
        std::vector<int16_t> x(p, p + b.size() / 2);
        spit(argv[3], run_chain(x)); return 0;
    }
    if (m == "ext" && argc == 4) {
        std::vector<char> b = slurp(argv[2]); const int16_t *t = (const int16_t *)b.data(); size_t n = b.size() / 4;
        static const char *nm[4] = { "cordic0", "cordic3", "lut", "poly" };
        for (int k = 0; k < 4; k++) {
            std::vector<int32_t> o(2 * n);
            for (size_t i = 0; i < n; i++) ext_call(k, t[2*i], t[2*i+1], o[2*i], o[2*i+1]);
            spit(std::string(argv[3]) + "." + nm[k] + ".bin", o);
        }
        return 0;
    }
    if (m == "bench" && argc == 3) {
        size_t n = strtoull(argv[2], 0, 10); const size_t M = 262144;
        std::vector<int16_t> x(n), I(n), Q(n);
        for (size_t i = 0; i < n; i++) x[i] = (int16_t)(hash32((uint32_t)i) >> 16);
        for (size_t i = 0; i < n; i++) {
            dds_out_t s, c; dds_sincos(i == 0, phase_t(21474836u), s, c);
            bool v; mix_t a, b; mixer(true, adc_t(x[i]), ref_t(s), ref_t(c), v, a, b);
            I[i] = (int16_t)a.to_int(); Q[i] = (int16_t)b.to_int();
        }
        uint64_t h = 0xcbf29ce484222325ULL;
        for (size_t i = 0; i < n; i++) h = fnv_add(h, I[i]);
        for (size_t i = 0; i < n; i++) h = fnv_add(h, Q[i]);
        printf("stage 1 dds+mixer      hash=0x%016llx\n", (unsigned long long)h);
        std::vector<int32_t> yI = run_chain(I), yQ = run_chain(Q);
        h = 0xcbf29ce484222325ULL;
        for (size_t i = 0; i < yI.size(); i++) h = fnv_add(h, yI[i]);
        for (size_t i = 0; i < yQ.size(); i++) h = fnv_add(h, yQ[i]);
        printf("stage 2 cic+fir (I+Q)  hash=0x%016llx\n", (unsigned long long)h);
        static const char *nm[4] = { "cordic_g0", "cordic_g3", "lut", "poly" };
        for (int k = 0; k < 4; k++) {
            h = 0xcbf29ce484222325ULL;
            for (size_t i = 0; i < M; i++) {
                int16_t px = (int16_t)(hash32(2 * (uint32_t)i) >> 16), py = (int16_t)(hash32(2 * (uint32_t)i + 1) >> 16);
                int32_t mg, an; ext_call(k, px, py, mg, an);
                h = fnv_add(h, mg); h = fnv_add(h, an);
            }
            printf("stage 3 %-14s hash=0x%016llx\n", nm[k], (unsigned long long)h);
        }
        return 0;
    }
    fprintf(stderr, "bad usage\n"); return 2;
}
