#pragma once
// Adaptive-bandwidth controller: constants and word widths.
// Widths come from the Python model (step 2a/2b/2c) and are checked against its
// worst case (ctrl_corner.csv: full-range random, +/-max alternation, extremes).
#include <ap_int.h>

constexpr int IN_W  = 18;            // chain output: signed 18 bit
constexpr int FA    = 22;            // extra fraction bits, averager state
constexpr int FV    = 16;            // extra fraction bits, noise meter
constexpr int FU    = 16;            // extra fraction bits, variance tracker
constexpr int KMIN  = 0;
constexpr int KMAX  = 20;
constexpr int LAG   = 32;            // noise meter compares with the sample 32 back
constexpr int SKIP  = 64;            // ignore the chain's own start-up ramp
constexpr int EVERY = 32;            // k decision every 32 samples
constexpr int JMAX  = 9;             // noise meter window 2^9
constexpr int C_NUM = 139;           // c = 139/128
constexpr int Z_W   = IN_W + FA;     // 40

typedef ap_int<IN_W>      in_t;
typedef ap_int<IN_W + 1>  diff_t;    // difference of two inputs
typedef ap_uint<38>       sraw_t;    // dI^2 + dQ^2  (< 2^37)
typedef ap_int<Z_W>       z_t;       // averager state
typedef ap_uint<52>       vh_t;      // noise meter state
typedef ap_int<56>        u_t;       // variance tracker state
typedef ap_int<64>        wide_t;    // scratch for intermediate sums (largest value seen/bounded: ~60 bits)
typedef ap_int<28>        m8_t;      // averager output at 8 fraction bits (for the k rule)
typedef ap_uint<5>        k_t;

#ifndef CTRL_AW
#define CTRL_AW 1                    // anti-windup on (step 2c fix)
#endif
