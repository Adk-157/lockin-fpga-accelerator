#include "lockin_top.h"
#include "cic_fir_common.h"
#include "mixer_params.h"
#include "dds_params.h"
#include "cordic_hls.h"
#include "lut_hls.h"
#include "poly_hls.h"
#include "ctrl_x.h"

// ---------------------------------------------------------------- helpers
static inline ap_uint<32> xorshift32(ap_uint<32> x)
{
    x ^= (x << 13);
    x ^= (x >> 17);
    x ^= (x << 5);
    return x;
}

// mixer rounding, identical to mixer_hls.cpp: round to nearest (ties up), saturate to 16 bit
static inline ap_int<16> mix_round_sat(ap_int<33> p)
{
    ap_int<34> r = ((ap_int<34>)p + (ap_int<34>(1) << (MIX_SHIFT - 1))) >> MIX_SHIFT;
    if (r > 32767)  return (ap_int<16>)32767;
    if (r < -32768) return (ap_int<16>)-32768;
    return (ap_int<16>)r;
}

// round-to-nearest shift right, then saturate to a signed 16-bit word
static inline ap_int<16> narrow16(ap_int<64> v, int sh)
{
    ap_int<64> r = (v + (ap_int<64>(1) << (sh - 1))) >> sh;
    if (r > 32767)  return (ap_int<16>)32767;
    if (r < -32768) return (ap_int<16>)-32768;
    return (ap_int<16>)r;
}

namespace {
struct Top {
    ap_uint<32> ph_ref_acc, ph_sig_acc;     // two phase accumulators (reference / test tone)
    ap_uint<32> rng_a, rng_b;               // noise generator state
    CicState csI, csQ;
    FirState fsI, fsQ;
    ap_uint<32> n_out;                      // decimated outputs since reset
    ap_uint<32> n_log;                      // records written
    ap_uint<16> lg_cnt;                     // counts outputs between records
    Top() { reset(0); }
    void reset(ap_uint<32> seed) {
        ph_ref_acc = 0; ph_sig_acc = 0;
        rng_a = seed | 1;                               // never zero
        rng_b = (ap_uint<32>)((seed << 16) | (seed >> 16)) ^ 0x9E3779B9u;
        if (rng_b == 0) rng_b = 1;
        cic_reset(csI); cic_reset(csQ); fir_reset(fsI); fir_reset(fsQ);
        n_out = 0; n_log = 0; lg_cnt = 0;
    }
};
Top T;
}

// ---------------------------------------------------------------- top
void lockin_top(ap_uint<32> ctl, ap_uint<5> kfix,
                ap_uint<32> ph_ref, ap_uint<32> ph_sig, ap_uint<32> ph_off,
                ap_int<16> amp, ap_uint<16> sigma, ap_uint<32> seed,
                ap_uint<16> log_every, ap_int<16> x_ext,
                ap_uint<32> &out_count, ap_uint<32> &log_n, ap_uint<32> &status,
                ap_uint<5> &k_now, ap_int<32> &mI_now, ap_int<32> &mQ_now, ap_uint<16> &mag_now,
                ap_int<32> log_mem[LOG_WORDS])
{
#pragma HLS INTERFACE s_axilite port=return    bundle=ctl
#pragma HLS INTERFACE s_axilite port=ctl       bundle=ctl
#pragma HLS INTERFACE s_axilite port=kfix      bundle=ctl
#pragma HLS INTERFACE s_axilite port=ph_ref    bundle=ctl
#pragma HLS INTERFACE s_axilite port=ph_sig    bundle=ctl
#pragma HLS INTERFACE s_axilite port=ph_off    bundle=ctl
#pragma HLS INTERFACE s_axilite port=amp       bundle=ctl
#pragma HLS INTERFACE s_axilite port=sigma     bundle=ctl
#pragma HLS INTERFACE s_axilite port=seed      bundle=ctl
#pragma HLS INTERFACE s_axilite port=log_every bundle=ctl
#pragma HLS INTERFACE s_axilite port=x_ext     bundle=ctl
#pragma HLS INTERFACE s_axilite port=out_count bundle=ctl
#pragma HLS INTERFACE s_axilite port=log_n     bundle=ctl
#pragma HLS INTERFACE s_axilite port=status    bundle=ctl
#pragma HLS INTERFACE s_axilite port=k_now     bundle=ctl
#pragma HLS INTERFACE s_axilite port=mI_now    bundle=ctl
#pragma HLS INTERFACE s_axilite port=mQ_now    bundle=ctl
#pragma HLS INTERFACE s_axilite port=mag_now   bundle=ctl
#pragma HLS INTERFACE s_axilite port=log_mem   bundle=ctl
#pragma HLS PIPELINE II=500
#pragma HLS ARRAY_PARTITION variable=T.csI.integ complete
#pragma HLS ARRAY_PARTITION variable=T.csI.comb  complete
#pragma HLS ARRAY_PARTITION variable=T.csQ.integ complete
#pragma HLS ARRAY_PARTITION variable=T.csQ.comb  complete
#pragma HLS ARRAY_PARTITION variable=T.fsI.hist  complete
#pragma HLS ARRAY_PARTITION variable=T.fsQ.hist  complete

    const bool rst     = ctl[0];
    const bool adapt   = ctl[1];
    const bool log_en  = ctl[2];
    const bool use_ext = ctl[3];
    const bool log_clr = ctl[4];

    if (rst) T.reset(seed);
    if (log_clr) { T.n_log = 0; T.lg_cnt = 0; }

    bool vI = false;
    fir_out_t yI = 0, yQ = 0;
    if (!rst) {                                      // a reset call does nothing but reset
        // ---- stimulus: x = A*cos(w_sig*t + phi) + noise  (Q3.13) -------------------------
        ap_uint<32> psig = T.ph_sig_acc + ph_off;
        ap_int<16>  cs   = DDS_SINE_ROM[(ap_uint<32>)(psig + 0x40000000u) >> 22];      // cosine
        ap_int<32>  tone_p = (ap_int<32>)cs * (ap_int<32>)amp;                           // Q4.28
        ap_int<32>  tone   = (tone_p + (ap_int<32>(1) << 14)) >> 15;                     // Q3.13

        T.rng_a = xorshift32(T.rng_a);
        T.rng_b = xorshift32(T.rng_b);
        ap_int<16> n0 = (ap_int<16>)T.rng_a.range(15, 0);
        ap_int<16> n1 = (ap_int<16>)T.rng_a.range(31, 16);
        ap_int<16> n2 = (ap_int<16>)T.rng_b.range(15, 0);
        ap_int<16> n3 = (ap_int<16>)T.rng_b.range(31, 16);
        ap_int<20> S  = (ap_int<20>)n0 + n1 + n2 + n3;                // std ~ 37837 (sum of 4 uniforms)
        ap_int<64> nt = (ap_int<64>)S * (ap_int<64>)sigma * 28378;    // 28378 / 2^30 ~ 1 / 37837
        ap_int<40> noise = (ap_int<40>)((nt + (ap_int<64>(1) << 29)) >> 30);  // std ~ sigma LSB

        ap_int<41> xs = (ap_int<41>)tone + noise;
        ap_int<16> x_gen = (xs > 32767) ? (ap_int<16>)32767 : (xs < -32768) ? (ap_int<16>)-32768 : (ap_int<16>)xs;
        ap_int<16> x = use_ext ? x_ext : x_gen;

        // ---- reference DDS (identical to dds_hls.cpp) and mixer --------------------------
        ap_uint<32> pref = T.ph_ref_acc;
        ap_int<16>  s_ref = DDS_SINE_ROM[pref >> 22];
        ap_int<16>  c_ref = DDS_SINE_ROM[(ap_uint<32>)(pref + 0x40000000u) >> 22];
        T.ph_ref_acc = T.ph_ref_acc + ph_ref;
        T.ph_sig_acc = T.ph_sig_acc + ph_sig;

        ap_int<32> pc = (ap_int<32>)x * (ap_int<32>)c_ref;
        ap_int<32> ps = (ap_int<32>)x * (ap_int<32>)s_ref;
        ap_int<16> mI = mix_round_sat((ap_int<33>)pc);
        ap_int<16> mQ = mix_round_sat(-(ap_int<33>)ps);

        // ---- CIC decimator + compensating FIR, one per channel ---------------------------
        bool vQ; samp_t dI, dQ;
        cic_step(T.csI, mI, vI, dI);
        cic_step(T.csQ, mQ, vQ, dQ);
        if (vI) { yI = fir_step(T.fsI, dI); yQ = fir_step(T.fsQ, dQ); }

    }

    // ---- controller: adaptive or fixed averaging bandwidth ---------------------------
    k_t k; z_t zI, zQ; ap_int<32> vm16, sig;
    adaptive_ctrl_x(rst, vI, (in_t)yI, (in_t)yQ, adapt, kfix, k, zI, zQ, vm16, sig);

    // averaged I/Q: 8 extra fraction bits for the log, 16-bit Q3.13 for the extractors
    ap_int<64> zI64 = zI, zQ64 = zQ;
    ap_int<64> mI8 = (zI64 + (ap_int<64>(1) << (FA - 8 - 1))) >> (FA - 8);
    ap_int<64> mQ8 = (zQ64 + (ap_int<64>(1) << (FA - 8 - 1))) >> (FA - 8);
    ap_int<16> xi = narrow16(zI64, FA);
    ap_int<16> xq = narrow16(zQ64, FA);

    if (vI && !rst) {
        T.n_out = T.n_out + 1;

        cordic_mag_t cm; cordic_ang_t ca;
        lut_mag_t    lm; lut_ang_t    la;
        poly_mag_t   pm; poly_ang_t   pa;
        cordic_vectoring(xi, xq, cm, ca);
        lut_vectoring(xi, xq, lm, la);
        poly_vectoring(xi, xq, pm, pa);

        mag_now = cm;
        mI_now = (ap_int<32>)mI8;
        mQ_now = (ap_int<32>)mQ8;

        // ---- log every log_every-th decimated output ----------------------------------
        ap_uint<16> every = (log_every == 0) ? (ap_uint<16>)1 : log_every;
        if (T.lg_cnt == 0) {
            if (log_en && T.n_log < LOG_N) {
                int b = (int)T.n_log * LOG_REC;                                  // word offset of this record
                log_mem[b + 0]  = (ap_int<32>)T.n_out;
                log_mem[b + 1]  = (ap_int<32>)yI;
                log_mem[b + 2]  = (ap_int<32>)yQ;
                log_mem[b + 3]  = (ap_int<32>)k;
                log_mem[b + 4]  = (ap_int<32>)mI8;
                log_mem[b + 5]  = (ap_int<32>)mQ8;
                log_mem[b + 6]  = (ap_int<32>)(((ap_uint<32>)(ap_uint<16>)ca << 16) | (ap_uint<32>)cm);
                log_mem[b + 7]  = (ap_int<32>)(((ap_uint<32>)(ap_uint<16>)la << 16) | (ap_uint<32>)lm);
                log_mem[b + 8]  = (ap_int<32>)pm;
                log_mem[b + 9]  = (ap_int<32>)pa;
                log_mem[b + 10] = vm16;
                log_mem[b + 11] = sig;
                log_mem[b + 12] = 0; log_mem[b + 13] = 0; log_mem[b + 14] = 0; log_mem[b + 15] = 0;
                T.n_log = T.n_log + 1;
            }
        }
        T.lg_cnt = (T.lg_cnt + 1 >= every) ? (ap_uint<16>)0 : (ap_uint<16>)(T.lg_cnt + 1);
    }

    k_now     = k;
    out_count = T.n_out;
    log_n     = T.n_log;
    status    = (ap_uint<32>)((T.n_log >= LOG_N) ? 1 : 0);
}
