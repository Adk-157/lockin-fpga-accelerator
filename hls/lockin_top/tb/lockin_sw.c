/* lockin_sw.c - complete software-only baseline of the digital lock-in, for the PS (Cortex-A53).
 *
 *   stage 1  DDS + mixer          (same arithmetic as dds_hls.cpp and mixer_hls.cpp)
 *   stage 2  CIC + FIR            (same as cic_step / fir_step in cic_fir_common.h, R = 128, rounded)
 *   stage 3  magnitude / phase    CORDIC (0 and 3 guard bits), lookup table, polynomial
 *                                 (same as cordic_hls.cpp, lut_hls.cpp, poly_hls.cpp)
 *
 * Plain C, no ap_int.  The three *_params.h files are your own files, unchanged.
 * Build:   gcc -O2 -o lockin_sw lockin_sw.c
 * Run:     ./lockin_sw bench
 *
 * Other modes (used only for testing):  dump_mix, dump_dds, dump_chain, dump_ext, csv_mixer, csv_chain
 * The MUT macro is used only by the test script, to break the code on purpose.
 */
#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#pragma GCC diagnostic ignored "-Wunused-const-variable"
#include "dds_params.h"             /* DDS_SINE_ROM[1024] */
#include "lockin_golden_params.h"   /* CORDIC / LUT / polynomial tables and constants */
#include "cic_fir_params.h"         /* FIR_TAPS_R128 and widths */

#ifndef MUT
#define MUT 0
#endif

/* Wrap v to a signed w-bit number (what an ap_int<w> assignment does). */
static inline int64_t sx(int64_t v, int w)
{
    return (int64_t)((uint64_t)v << (64 - w)) >> (64 - w);
}

/* ============================ stage 1: DDS + mixer ============================ */
typedef struct { uint32_t phase; } dds_state;

static inline void dds_step(dds_state *d, uint32_t inc, int16_t *s, int16_t *c)
{
#if MUT == 12
    const uint32_t QUARTER = 0x20000000u;           /* break: wrong quarter turn */
#else
    const uint32_t QUARTER = 0x40000000u;
#endif
    uint32_t pc = d->phase + QUARTER;               /* wraps mod 2^32 on purpose */
    *s = (int16_t)DDS_SINE_ROM[d->phase >> 22];     /* top 10 bits of the phase */
    *c = (int16_t)DDS_SINE_ROM[pc >> 22];
    d->phase += inc;                                /* advance AFTER using the current phase */
}

static inline int16_t round_sat(int64_t p)          /* Q4.28 -> Q3.13, ties up, saturate */
{
#if MUT == 10
    int64_t r = p >> 15;                            /* break: floor instead of round */
#else
    int64_t r = (p + ((int64_t)1 << 14)) >> 15;
#endif
#if MUT == 11
    return (int16_t)(uint16_t)(r & 0xFFFF);         /* break: wrap instead of saturate */
#else
    if (r > 32767)  return 32767;
    if (r < -32768) return -32768;
    return (int16_t)r;
#endif
}

static inline void mixer_step(int16_t x, int16_t s, int16_t c, int16_t *i, int16_t *q)
{
    int32_t pc = (int32_t)x * c;                    /* Q4.28 */
    int32_t ps = (int32_t)x * s;
    *i = round_sat(pc);
#if MUT == 18
    *q = round_sat(ps);                             /* break: forgot the minus sign */
#else
    *q = round_sat(-(int64_t)ps);                   /* minus sine */
#endif
}

/* ============================ stage 2: CIC + FIR ============================ */
#define CIC_R   128
#if MUT == 4
#define ACC_W 43                                    /* break: accumulator one bit too narrow */
#else
#define ACC_W CIC_ACC_W_R128                        /* 44: Hogenauer width for R = 128 */
#endif
#if MUT == 5
#define PHASE (CIC_R - 1)                           /* break: decimation phase shifted */
#else
#define PHASE 0                                     /* first sample after reset is an output */
#endif

typedef struct { int64_t integ[CIC_N_STAGES]; int64_t comb[CIC_N_STAGES]; unsigned cnt; } cic_state;
typedef struct { int16_t hist[FIR_NTAPS]; } fir_state;

static inline int cic_step(cic_state *s, int16_t x, int16_t *y)
{
    int64_t v = x;
    for (int k = 0; k < CIC_N_STAGES; k++) {        /* integrators run every sample */
        s->integ[k] = sx(s->integ[k] + v, ACC_W);
        v = s->integ[k];
    }
    int valid = (s->cnt == PHASE);
    if (valid) {
        int64_t c = v;
        for (int k = 0; k < CIC_N_STAGES; k++) {    /* combs */
            int64_t d = sx(c - s->comb[k], ACC_W);
            s->comb[k] = c;
            c = d;
        }
#if MUT == 1
        int64_t r = c >> 28;                        /* break: floor instead of round */
#else
        int64_t r = (c + ((int64_t)1 << 27)) >> 28; /* round half up; the sum is NOT wrapped (45-bit in HLS) */
#endif
        *y = (int16_t)(uint16_t)(r & 0xFFFF);
    }
    s->cnt = (s->cnt == CIC_R - 1) ? 0 : s->cnt + 1;
    return valid;
}

static inline int32_t fir_step(fir_state *s, int16_t x)
{
    for (int k = FIR_NTAPS - 1; k > 0; k--) s->hist[k] = s->hist[k - 1];
    s->hist[0] = x;
    int64_t acc = 0;
    for (int k = 0; k < FIR_NTAPS; k++) {
        int32_t tap = FIR_TAPS_R128[k];
#if MUT == 3
        if (tap == -526) tap = -527;                /* break: one tap off by one */
#endif
        acc += (int64_t)tap * s->hist[k];
    }
#if MUT == 2
    int64_t r = acc >> FIR_TAP_FRAC;                /* break: floor instead of round */
#else
    int64_t r = (acc + ((int64_t)1 << (FIR_TAP_FRAC - 1))) >> FIR_TAP_FRAC;
#endif
    return (int32_t)sx(r, 18);                      /* 18-bit output */
}

static size_t chain_process(const int16_t *x, size_t n, int32_t *y)
{
    cic_state cs; fir_state fs;
    memset(&cs, 0, sizeof cs); memset(&fs, 0, sizeof fs);
    size_t m = 0;
    for (size_t i = 0; i < n; i++) {
        int16_t c;
        if (cic_step(&cs, x[i], &c)) y[m++] = fir_step(&fs, c);
    }
    return m;
}

/* ============================ stage 3: magnitude / phase ============================ */
typedef struct { uint32_t rq, mx; int base_from_x, neg_x, neg_y, is_zero; } ratio_info;

/* |x|,|y| -> r = min/max as Q2.14 (a real integer division) */
static inline ratio_info make_ratio(int16_t x, int16_t y)
{
    ratio_info r;
    int32_t xe = x, ye = y;
    uint32_t ax = (uint32_t)(xe < 0 ? -xe : xe);
    uint32_t ay = (uint32_t)(ye < 0 ? -ye : ye);
    r.neg_x = (x < 0);
    r.neg_y = (y < 0);
    r.is_zero = (ax == 0) && (ay == 0);
    r.base_from_x = (ax >= ay);
    uint32_t num_v = r.base_from_x ? ay : ax;       /* smaller operand */
    r.mx           = r.base_from_x ? ax : ay;       /* larger operand */
    r.rq = r.is_zero ? 0 : ((num_v << R_FRAC) / r.mx);
    return r;
}

/* octant angle -> full-circle angle (18-bit arithmetic) */
static inline int32_t fold_angle(const ratio_info *r, int32_t look, int a90, int a180)
{
    int32_t a = r->base_from_x ? look : (int32_t)sx(a90 - look, 18);
    if (!r->neg_x && !r->neg_y) return a;
#if MUT == 15
    if ( r->neg_x && !r->neg_y) return (int32_t)sx(-a, 18);                 /* break: wrong quadrant formula */
    if ( r->neg_x &&  r->neg_y) return (int32_t)sx(-(a180 - a), 18);
    return (int32_t)sx(a180 - a, 18);
#else
    if ( r->neg_x && !r->neg_y) return (int32_t)sx(a180 - a, 18);
    if ( r->neg_x &&  r->neg_y) return (int32_t)sx(-(a180 - a), 18);
    return (int32_t)sx(-a, 18);
#endif
}

/* ---- CORDIC vectoring.  G = number of guard bits (0 = baseline, 3 = cordic_g3) ---- */
static inline void cordic(int G, int16_t xin, int16_t yin, uint16_t *mag, int32_t *ang)
{
    const int W = 18 + G;
    const int32_t A180 = 180 << CORDIC_ANG_FRAC;    /* 11520 */
    const int32_t FULL = 2 * A180;                  /* 23040 */
    int32_t x = (int32_t)sx((int64_t)xin * (1 << G), W);
    int32_t y = (int32_t)sx((int64_t)yin * (1 << G), W);
    int32_t off = 0;
    if (x < 0) {                                    /* pre-rotate into the right half plane */
#if MUT == 14
        x = (int32_t)sx(-x, W); y = (int32_t)sx(-y, W);
        off = 0;                                    /* break: forgot the +-180 degree offset */
#else
        x = (int32_t)sx(-x, W); y = (int32_t)sx(-y, W);
        off = (y >= 0) ? A180 : -A180;
#endif
    }
    int32_t acc = 0;
    for (int i = 0; i < CORDIC_N_ITER; i++) {
        int32_t xs = x >> i, ys = y >> i;           /* arithmetic shift */
        if (y < 0) { x = (int32_t)sx(x - ys, W); y = (int32_t)sx(y + xs, W); acc = (int32_t)sx(acc - CORDIC_ATAN_ROM[i], 16); }
        else       { x = (int32_t)sx(x + ys, W); y = (int32_t)sx(y - xs, W); acc = (int32_t)sx(acc + CORDIC_ATAN_ROM[i], 16); }
    }
    uint64_t xu   = (uint64_t)x & (((uint64_t)1 << (17 + G)) - 1);              /* x >= 0 here */
    uint64_t prod = (xu * (uint64_t)CORDIC_GAIN_RECIP) & (((uint64_t)1 << (30 + G)) - 1);
#if MUT == 17
    *mag = (uint16_t)((prod >> (XY_FRAC + (G ? 2 : 0))) & 0xFFFF);                /* break: guard bits dropped wrongly */
#else
    *mag = (uint16_t)((prod >> (XY_FRAC + G)) & 0xFFFF);                          /* drop the guard bits again */
#endif
    int32_t a = (int32_t)sx(acc + off, 16);
    if (a >= A180)      a = (int32_t)sx(a - FULL, 16);
    else if (a < -A180) a = (int32_t)sx(a + FULL, 16);
    *ang = a;
}
static inline void cordic0_fn(int16_t x, int16_t y, uint16_t *m, int32_t *a) { cordic(0, x, y, m, a); }
static inline void cordic3_fn(int16_t x, int16_t y, uint16_t *m, int32_t *a) { cordic(3, x, y, m, a); }

/* ---- lookup table: 256-entry atan and magnitude-scale tables + linear interpolation ---- */
static inline void lut_fn(int16_t x, int16_t y, uint16_t *mag, int32_t *ang)
{
    const int SIZE = 1 << LUT_TABLE_BITS;
    ratio_info r = make_ratio(x, y);
    uint32_t scaled = r.rq * (uint32_t)(SIZE - 1);                              /* 22 bit */
    uint32_t i_full = scaled >> R_FRAC;
#if MUT == 13
    uint32_t i0 = (i_full > (uint32_t)(SIZE - 3)) ? (uint32_t)(SIZE - 3) : i_full;   /* break: clamp one entry early */
#else
    uint32_t i0 = (i_full > (uint32_t)(SIZE - 2)) ? (uint32_t)(SIZE - 2) : i_full;
#endif
    int32_t fr = (int32_t)scaled - (int32_t)(i0 << R_FRAC);
    int32_t a0 = LUT_ATAN_ROM[i0], a1 = LUT_ATAN_ROM[i0 + 1];
    int32_t s0 = LUT_MAG_ROM[i0],  s1 = LUT_MAG_ROM[i0 + 1];
    int32_t look_a = (int32_t)sx(a0 + sx(((int64_t)(a1 - a0) * fr) >> R_FRAC, 20), 20);
    int32_t look_s = (int32_t)sx(s0 + sx(((int64_t)(s1 - s0) * fr) >> R_FRAC, 20), 20);
    uint64_t mprod = ((uint64_t)r.mx * (uint64_t)((uint32_t)look_s & 0xFFFFF)) & (((uint64_t)1 << 34) - 1);
    uint32_t m = (uint32_t)((mprod >> LUT_SCALE_FRAC) & 0xFFFF);
    int32_t an = fold_angle(&r, (int32_t)sx(look_a, 18), 90 << LUT_ANG_FRAC, 180 << LUT_ANG_FRAC);
    *mag = r.is_zero ? 0 : (uint16_t)m;
    *ang = r.is_zero ? 0 : (int32_t)sx(an, 16);     /* lut angle is a 16-bit word */
}

/* ---- polynomial: Horner with saturation after every step ---- */
static inline int32_t horner(uint32_t rq, const int *c, int nc, int wb)
{
    const int64_t HI = ((int64_t)1 << (wb - 1)) - 1, LO = -((int64_t)1 << (wb - 1));
    int64_t acc = sx(c[0], wb);
    for (int k = 1; k < nc; k++) {
        int64_t t = (((int64_t)acc * (int64_t)rq) >> R_FRAC) + c[k];
#if MUT == 16
        acc = sx(t, wb);                            /* break: wrap instead of saturate */
#else
        acc = (t > HI) ? HI : (t < LO) ? LO : t;
#endif
    }
    return (int32_t)acc;
}

static inline void poly_fn(int16_t x, int16_t y, uint16_t *mag, int32_t *ang)
{
    ratio_info r = make_ratio(x, y);
    int32_t look_a = horner(r.rq, POLY_ATAN_COEFFS, 6, POLY_ATAN_WORD);
    int32_t scale  = horner(r.rq, POLY_MAG_COEFFS,  4, POLY_MAG_WORD);
    int64_t mprod  = sx((int64_t)r.mx * scale, 40);
    uint32_t m = (uint32_t)((mprod >> POLY_MAG_FRAC) & 0xFFFF);
    int32_t an = fold_angle(&r, look_a, 90 << POLY_ATAN_FRAC, 180 << POLY_ATAN_FRAC);
    *mag = r.is_zero ? 0 : (uint16_t)m;
    *ang = r.is_zero ? 0 : (int32_t)sx(an, 17);     /* poly angle is a 17-bit word (+-46080 does not fit 16 bits) */
}

#define DEFINE_RUN(name, fn) \
    static void name(const int16_t *px, const int16_t *py, size_t m, uint16_t *mag, int32_t *ang) \
    { for (size_t i = 0; i < m; i++) fn(px[i], py[i], &mag[i], &ang[i]); }
DEFINE_RUN(run_cordic0, cordic0_fn)
DEFINE_RUN(run_cordic3, cordic3_fn)
DEFINE_RUN(run_lut,     lut_fn)
DEFINE_RUN(run_poly,    poly_fn)

/* ============================ helpers ============================ */
static inline uint32_t hash32(uint32_t h)
{
    h ^= h >> 16; h *= 0x7feb352du; h ^= h >> 15; h *= 0x846ca68bu; h ^= h >> 16;
    return h;
}
#define FNV0 0xcbf29ce484222325ULL
static inline uint64_t fnv_add(uint64_t h, int32_t v)       /* FNV-1a 64 over the 4 bytes of v, low byte first */
{
    uint32_t u = (uint32_t)v;
    for (int b = 0; b < 4; b++) { h ^= (u >> (8 * b)) & 0xFF; h *= 0x100000001b3ULL; }
    return h;
}
static double now_ms(void)
{
    struct timespec t; clock_gettime(CLOCK_MONOTONIC, &t);
    return t.tv_sec * 1e3 + t.tv_nsec / 1e6;
}
static int cmp_d(const void *a, const void *b)
{
    double d = *(const double *)a - *(const double *)b;
    return (d > 0) - (d < 0);
}
static void *slurp(const char *path, size_t *bytes)
{
    FILE *f = fopen(path, "rb");
    if (!f) { perror(path); exit(2); }
    fseek(f, 0, SEEK_END); long n = ftell(f); fseek(f, 0, SEEK_SET);
    void *p = malloc((size_t)n + 16);
    if (fread(p, 1, (size_t)n, f) != (size_t)n) { perror("read"); exit(2); }
    fclose(f); *bytes = (size_t)n; return p;
}
static void spit(const char *path, const void *p, size_t bytes)
{
    FILE *f = fopen(path, "wb");
    if (!f) { perror(path); exit(2); }
    if (bytes) fwrite(p, 1, bytes, f);
    fclose(f);
}

#define PH_INC 21474836u    /* 1 kHz at a 200 kHz sample rate: round(1000/200000 * 2^32) */
#define BENCH_M 262144      /* number of (I,Q) pairs for the extraction benchmark */

/* ============================ test modes ============================ */
static int dump_mix(const char *in, const char *out)      /* int16 (x,s,c) triples -> int16 (i,q) pairs */
{
    size_t b; int16_t *t = slurp(in, &b); size_t n = b / 6;
    int16_t *o = malloc(n * 4 + 16);
    for (size_t k = 0; k < n; k++) mixer_step(t[3*k], t[3*k+1], t[3*k+2], &o[2*k], &o[2*k+1]);
    spit(out, o, n * 4); return 0;
}
static int dump_dds(uint32_t inc, size_t n, const char *out)   /* int16 (sin,cos) pairs from phase 0 */
{
    int16_t *o = malloc(n * 4 + 16); dds_state d = {0};
    for (size_t k = 0; k < n; k++) dds_step(&d, inc, &o[2*k], &o[2*k+1]);
    spit(out, o, n * 4); return 0;
}
static int gen_chain_input(const char *g, int16_t *x, size_t n)
{
    for (size_t i = 0; i < n; i++) {
        if      (!strcmp(g, "hash")) x[i] = (int16_t)(hash32((uint32_t)i) >> 16);
        else if (!strcmp(g, "max"))  x[i] = 32767;
        else if (!strcmp(g, "min"))  x[i] = -32768;
        else if (!strcmp(g, "alt"))  x[i] = (i & 1) ? -32768 : 32767;
        else if (!strcmp(g, "step")) x[i] = ((i / 5000) & 1) ? 32767 : -32768;
        else if (!strcmp(g, "mix"))
            x[i] = (int16_t)(((i % 200) < 100 ? 8192 : -8192) + ((int16_t)(hash32((uint32_t)i) >> 16) >> 5));
        else return -1;
    }
    return 0;
}
static int dump_chain(const char *g, size_t n, const char *prefix)
{
    int16_t *x = malloc((n + 1) * sizeof *x); int32_t *y = malloc((n / CIC_R + 2) * sizeof *y);
    if (gen_chain_input(g, x, n)) { fprintf(stderr, "unknown generator %s\n", g); return 2; }
    size_t m = chain_process(x, n, y);
    char name[512];
    snprintf(name, sizeof name, "%s.x.bin", prefix); spit(name, x, n * sizeof *x);
    snprintf(name, sizeof name, "%s.y.bin", prefix); spit(name, y, m * sizeof *y);
    return 0;
}
static int dump_ext(const char *in, const char *prefix)   /* int16 (x,y) pairs -> int32 (mag,ang) pairs, 4 methods */
{
    size_t b; int16_t *t = slurp(in, &b); size_t n = b / 4;
    int16_t *px = malloc(n * 2 + 16), *py = malloc(n * 2 + 16); int32_t *ang = malloc(n * 4 + 16);
    uint16_t *mag = malloc(n * 2 + 16); int32_t *o = malloc(n * 8 + 16);
    for (size_t k = 0; k < n; k++) { px[k] = t[2*k]; py[k] = t[2*k+1]; }
    static void (*const fn[4])(const int16_t *, const int16_t *, size_t, uint16_t *, int32_t *) =
        { run_cordic0, run_cordic3, run_lut, run_poly };
    static const char *nm[4] = { "cordic0", "cordic3", "lut", "poly" };
    for (int k = 0; k < 4; k++) {
        fn[k](px, py, n, mag, ang);
        for (size_t i = 0; i < n; i++) { o[2*i] = mag[i]; o[2*i+1] = ang[i]; }
        char name[512]; snprintf(name, sizeof name, "%s.%s.bin", prefix, nm[k]); spit(name, o, n * 8);
    }
    return 0;
}
static int csv_mixer(const char *path)                    /* check against mixer_small.csv: x,s,c,i,q */
{
    FILE *f = fopen(path, "r"); if (!f) { perror(path); return 2; }
    char line[256]; long rows = 0, bad = 0; int x, s, c, i, q;
    if (!fgets(line, sizeof line, f)) return 2;
    while (fgets(line, sizeof line, f)) {
        if (sscanf(line, "%d,%d,%d,%d,%d", &x, &s, &c, &i, &q) != 5) continue;
        int16_t oi, oq; mixer_step((int16_t)x, (int16_t)s, (int16_t)c, &oi, &oq);
        rows++; if (oi != i || oq != q) bad++;
    }
    fclose(f);
    printf("mixer CSV: rows=%ld mismatches=%ld\n", rows, bad); return bad != 0;
}
static int csv_chain(const char *path)                    /* check against chain_R128_stream.csv: rst,x_q,valid,y_q */
{
    FILE *f = fopen(path, "r"); if (!f) { perror(path); return 2; }
    char line[256]; long rows = 0, bad = 0, outs = 0; int rst, x, valid, y;
    cic_state cs; fir_state fs; memset(&cs, 0, sizeof cs); memset(&fs, 0, sizeof fs);
    if (!fgets(line, sizeof line, f)) return 2;
    while (fgets(line, sizeof line, f)) {
        if (sscanf(line, "%d,%d,%d,%d", &rst, &x, &valid, &y) != 4) continue;
        if (rst) { memset(&cs, 0, sizeof cs); memset(&fs, 0, sizeof fs); }   /* reset, then process this sample */
        int16_t c; int v = cic_step(&cs, (int16_t)x, &c);
        int32_t yo = v ? fir_step(&fs, c) : 0;
        rows++; if (v != valid || (v && yo != y)) bad++;
        outs += v;
    }
    fclose(f);
    printf("chain CSV: rows=%ld outputs=%ld mismatches=%ld\n", rows, outs, bad); return bad != 0;
}

/* ============================ benchmark ============================ */
static void timing(double *t, int reps, double *best, double *med)
{
    qsort(t, reps, sizeof t[0], cmp_d); *best = t[0]; *med = t[reps / 2];
}

static int bench(size_t n, int reps)
{
    if (reps < 1) reps = 1;
    if (reps > 64) reps = 64;
    const size_t M = BENCH_M;
    int16_t *x = malloc(n * 2), *I = malloc(n * 2), *Q = malloc(n * 2);
    int32_t *yI = malloc((n / CIC_R + 2) * 4), *yQ = malloc((n / CIC_R + 2) * 4);
    int16_t *px = malloc(M * 2), *py = malloc(M * 2); int32_t *ang = malloc(M * 4); uint16_t *mag = malloc(M * 2);
    double t[64], best, med;
    long khz = -1; FILE *f = fopen("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq", "r");
    if (f) { if (fscanf(f, "%ld", &khz) != 1) khz = -1; fclose(f); }
    for (size_t i = 0; i < n; i++) x[i] = (int16_t)(hash32((uint32_t)i) >> 16);
    for (size_t i = 0; i < M; i++) { px[i] = (int16_t)(hash32(2*(uint32_t)i) >> 16); py[i] = (int16_t)(hash32(2*(uint32_t)i + 1) >> 16); }
    printf("lockin_sw bench: N=%zu samples, M=%zu vectors, %d runs per stage, cpu0 %ld kHz\n", n, M, reps, khz);

    /* stage 1: DDS + mixer */
    for (int r = 0; r < reps; r++) {
        double t0 = now_ms(); dds_state d = {0};
        for (size_t i = 0; i < n; i++) { int16_t s, c; dds_step(&d, PH_INC, &s, &c); mixer_step(x[i], s, c, &I[i], &Q[i]); }
        t[r] = now_ms() - t0;
    }
    timing(t, reps, &best, &med);
    uint64_t h = FNV0; for (size_t i = 0; i < n; i++) h = fnv_add(h, I[i]); for (size_t i = 0; i < n; i++) h = fnv_add(h, Q[i]);
    double s1 = best * 1e6 / n;
    printf("stage 1 dds+mixer      hash=0x%016llx  best %7.2f ns/sample  median %7.2f\n", (unsigned long long)h, s1, med * 1e6 / n);

    /* stage 2: CIC + FIR on I and on Q */
    size_t m1 = 0, m2 = 0;
    for (int r = 0; r < reps; r++) {
        double t0 = now_ms(); m1 = chain_process(I, n, yI); m2 = chain_process(Q, n, yQ); t[r] = now_ms() - t0;
    }
    timing(t, reps, &best, &med);
    h = FNV0; for (size_t i = 0; i < m1; i++) h = fnv_add(h, yI[i]); for (size_t i = 0; i < m2; i++) h = fnv_add(h, yQ[i]);
    double s2 = best * 1e6 / n;
    printf("stage 2 cic+fir (I+Q)  hash=0x%016llx  best %7.2f ns/sample  median %7.2f  (%zu outputs per channel)\n",
           (unsigned long long)h, s2, med * 1e6 / n, m1);

    /* stage 3: four extraction methods */
    static void (*const fn[4])(const int16_t *, const int16_t *, size_t, uint16_t *, int32_t *) =
        { run_cordic0, run_cordic3, run_lut, run_poly };
    static const char *nm[4] = { "cordic_g0", "cordic_g3", "lut", "poly" };
    double s3[4];
    for (int k = 0; k < 4; k++) {
        for (int r = 0; r < reps; r++) { double t0 = now_ms(); fn[k](px, py, M, mag, ang); t[r] = now_ms() - t0; }
        timing(t, reps, &best, &med);
        h = FNV0; for (size_t i = 0; i < M; i++) { h = fnv_add(h, mag[i]); h = fnv_add(h, ang[i]); }
        s3[k] = best * 1e6 / M;
        printf("stage 3 %-14s hash=0x%016llx  best %7.2f ns/vector  median %7.2f\n", nm[k], (unsigned long long)h, s3[k], med * 1e6 / M);
    }
    printf("estimated load of ONE A53 core at 200 kHz input (stages 1+2 per sample, stage 3 once per 128 samples,\n");
    printf("stage times measured separately and added, so this is an estimate):\n");
    for (int k = 0; k < 4; k++)
        printf("  %-10s %5.2f %%\n", nm[k], ((s1 + s2) * 200000.0 + s3[k] * 1562.5) / 1e7);
    return 0;
}

int main(int argc, char **argv)
{
    const char *m = argc > 1 ? argv[1] : "";
    if (!strcmp(m, "bench"))                     return bench(argc > 2 ? strtoull(argv[2], 0, 10) : 4194304, argc > 3 ? atoi(argv[3]) : 5);
    if (!strcmp(m, "dump_mix") && argc == 4)     return dump_mix(argv[2], argv[3]);
    if (!strcmp(m, "dump_dds") && argc == 5)     return dump_dds((uint32_t)strtoull(argv[2], 0, 0), strtoull(argv[3], 0, 10), argv[4]);
    if (!strcmp(m, "dump_chain") && argc == 5)   return dump_chain(argv[2], strtoull(argv[3], 0, 10), argv[4]);
    if (!strcmp(m, "dump_ext") && argc == 4)     return dump_ext(argv[2], argv[3]);
    if (!strcmp(m, "csv_mixer") && argc == 3)    return csv_mixer(argv[2]);
    if (!strcmp(m, "csv_chain") && argc == 3)    return csv_chain(argv[2]);
    fprintf(stderr, "usage: %s bench [N] [reps]\n", argv[0]);
    return 2;
}
