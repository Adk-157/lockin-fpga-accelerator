/* Independent reference for lockin_top: plain C, int64 arithmetic. Reuses the VERIFIED C chain /
   mixer / DDS / extractors from lockin_sw.c (bit-exact vs the HLS sources) and re-implements only the
   new stimulus generator separately. */
#define main lockin_sw_main
#include "lockin_sw.c"
#undef main

typedef struct {
    dds_state dr; uint32_t psig; uint32_t ra, rb;
    cic_state ci, cq; fir_state fi, fq;
} RefT;

static uint32_t xs32(uint32_t x) { x ^= x << 13; x ^= x >> 17; x ^= x << 5; return x; }

void ref_reset(RefT *r, uint32_t seed)
{
    memset(r, 0, sizeof *r);
    r->ra = seed | 1u;
    r->rb = ((seed << 16) | (seed >> 16)) ^ 0x9E3779B9u;
    if (r->rb == 0) r->rb = 1;
}

/* one input sample; returns 1 when a decimated output appears */
int ref_step(RefT *r, int use_ext, int16_t x_ext, uint32_t ph_ref, uint32_t ph_sig, uint32_t ph_off,
             int16_t amp, uint16_t sigma, int32_t *yI, int32_t *yQ, int16_t *x_out)
{
    uint32_t pcos = r->psig + ph_off + 0x40000000u;
    int64_t tone = ((int64_t)DDS_SINE_ROM[pcos >> 22] * (int64_t)amp + (1 << 14)) >> 15;
    r->ra = xs32(r->ra); r->rb = xs32(r->rb);
    int64_t S = (int16_t)(r->ra & 0xFFFF) + (int16_t)(r->ra >> 16) + (int16_t)(r->rb & 0xFFFF) + (int16_t)(r->rb >> 16);
    int64_t noise = (S * (int64_t)sigma * 28378 + ((int64_t)1 << 29)) >> 30;
    int64_t xs = tone + noise;
    int16_t xg = (int16_t)(xs > 32767 ? 32767 : (xs < -32768 ? -32768 : xs));
    int16_t x = use_ext ? x_ext : xg;
    *x_out = x;
    int16_t s, c, i, q;
    dds_step(&r->dr, ph_ref, &s, &c);
    r->psig += ph_sig;
    mixer_step(x, s, c, &i, &q);
    int16_t di, dq;
    int vi = cic_step(&r->ci, i, &di);
    int vq = cic_step(&r->cq, q, &dq);
    if (vi != vq) { fprintf(stderr, "internal: valid mismatch\n"); exit(3); }
    if (vi) { *yI = fir_step(&r->fi, di); *yQ = fir_step(&r->fq, dq); }
    return vi;
}

void ref_extract(int16_t x, int16_t y, uint16_t *cm, int32_t *ca, uint16_t *lm, int32_t *la, uint16_t *pm, int32_t *pa)
{
    cordic0_fn(x, y, cm, ca); lut_fn(x, y, lm, la); poly_fn(x, y, pm, pa);
}
RefT *ref_new(void) { return (RefT *)calloc(1, sizeof(RefT)); }
