// CIC decimator + 21-tap compensating FIR: shared types and per-sample step functions.
// Select the decimation factor at compile time:  -DCIC_R=128 (default, chosen) or -DCIC_R=100
//   R=100 : rescale = floor-divide by 100^4 (a real constant divider in hardware)
//   R=128 : rescale = arithmetic shift right by 28 (free)
#pragma once
#include <ap_int.h>
#include "cic_fir_params.h"

#ifndef CIC_R
#define CIC_R 128
#endif
#if CIC_R == 100
  #define CIC_ACC_W CIC_ACC_W_R100
  #define FIR_OUT_W FIR_OUT_W_R100
  #define FIR_TAPS  FIR_TAPS_R100
#elif CIC_R == 128
  #define CIC_ACC_W CIC_ACC_W_R128
  #define FIR_OUT_W FIR_OUT_W_R128
  #define FIR_TAPS  FIR_TAPS_R128
#else
  #error "CIC_R must be 100 or 128"
#endif

typedef ap_int<16>        samp_t;      // Q3.13 sample (CIC input AND output)
typedef ap_int<CIC_ACC_W> cic_acc_t;   // Hogenauer width: 16 + ceil(4*log2(R)); wraps by design
typedef ap_int<FIR_OUT_W> fir_out_t;   // 18 bits: FIR gain peaks at sum|taps| = 3.35, NOT 1

struct CicState { cic_acc_t integ[CIC_N_STAGES]; cic_acc_t comb[CIC_N_STAGES]; ap_uint<8> cnt; };
struct FirState { samp_t hist[FIR_NTAPS]; };

static inline void cic_reset(CicState &s) {
    for (int k = 0; k < CIC_N_STAGES; k++) { s.integ[k] = 0; s.comb[k] = 0; }
    s.cnt = 0;
}
static inline void fir_reset(FirState &s) {
    for (int k = 0; k < FIR_NTAPS; k++) s.hist[k] = 0;
}

// One input sample. Integrators run every sample; a decimated sample appears when
// the phase counter is 0 (the FIRST sample after reset is output, same as y[::R]).
static inline void cic_step(CicState &s, samp_t x, bool &valid, samp_t &y)
{
    cic_acc_t v = x;
    for (int k = 0; k < CIC_N_STAGES; k++) {          // cascaded integrators (wrap mod 2^W)
        s.integ[k] = s.integ[k] + v;
        v = s.integ[k];
    }
    valid = (s.cnt == 0);
    y = 0;
    if (valid) {
        cic_acc_t c = v;
        for (int k = 0; k < CIC_N_STAGES; k++) {      // cascaded combs
            cic_acc_t d = c - s.comb[k];
            s.comb[k] = c;
            c = d;
        }
#if CIC_R == 128
        y = (samp_t)((c + (cic_acc_t(1) << (7 * CIC_N_STAGES - 1))) >> (7 * CIC_N_STAGES));  // /128^4 == >>28, rounded to nearest (half up)
#else
        // floor(c / 100^4). C division truncates toward zero, Python floors:
        // for c<0 use (c - (D-1)) / D, which equals floor(c/D) exactly.
        const ap_int<CIC_ACC_W + 1> D = 100000000;
        ap_int<CIC_ACC_W + 1> t = c;
        if (t < 0) t = t - (D - 1);
        y = (samp_t)(t / D);
#endif
    }
    s.cnt = (s.cnt == CIC_R - 1) ? (ap_uint<8>)0 : (ap_uint<8>)(s.cnt + 1);
}

static inline fir_out_t fir_step(FirState &s, samp_t x)
{
    for (int k = FIR_NTAPS - 1; k > 0; k--) s.hist[k] = s.hist[k - 1];
    s.hist[0] = x;
    ap_int<40> acc = 0;                               // 16x16 products, 21 terms -> 37 bits
    for (int k = 0; k < FIR_NTAPS; k++)
        acc += (ap_int<FIR_TAP_WORD>)FIR_TAPS[k] * s.hist[k];
    return (fir_out_t)((acc + (ap_int<40>(1) << (FIR_TAP_FRAC - 1))) >> FIR_TAP_FRAC);  // rounded to nearest (half up)
}
