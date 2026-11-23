#pragma once
// Combined digital lock-in amplifier for the PYNQ-ZU: one call = one input sample.
//   stimulus (tone + noise, generated here) -> mixer (reference DDS) -> CIC+FIR (I and Q)
//   -> controller (adaptive or fixed averaging bandwidth) -> magnitude/phase by CORDIC,
//   lookup table and polynomial, all on the same I/Q.
// At a 100 MHz PL clock and II=500 the block takes 200 000 samples per second.
#include <ap_int.h>

#define LOG_REC   16                       // 32-bit words per log record
#define LOG_N     512                      // records
#define LOG_WORDS (LOG_N * LOG_REC)

// control word bits
#define CTL_RST      0x01   // hold 1 to reset everything, 0 to run
#define CTL_ADAPT    0x02   // 1 = adaptive bandwidth, 0 = fixed (k = kfix)
#define CTL_LOG_EN   0x04   // 1 = record decimated outputs into the log
#define CTL_USE_EXT  0x08   // 1 = input sample is x_ext instead of tone + noise
#define CTL_LOG_CLR  0x10   // 1 = empty the log (log_n = 0), lock-in keeps running

// log record layout (word index inside a record)
//  0 output counter   1 FIR out I   2 FIR out Q   3 k   4 mean I (8 extra frac bits)   5 mean Q
//  6 CORDIC {ang16,mag16}   7 LUT {ang16,mag16}   8 POLY mag   9 POLY ang (17 bit, Q.8)
//  10 noise-variance estimate   11 signal-power estimate   12..15 unused (0)

void lockin_top(ap_uint<32> ctl, ap_uint<5> kfix,
                ap_uint<32> ph_ref, ap_uint<32> ph_sig, ap_uint<32> ph_off,
                ap_int<16> amp, ap_uint<16> sigma, ap_uint<32> seed,
                ap_uint<16> log_every, ap_int<16> x_ext,
                ap_uint<32> &out_count, ap_uint<32> &log_n, ap_uint<32> &status,
                ap_uint<5> &k_now, ap_int<32> &mI_now, ap_int<32> &mQ_now, ap_uint<16> &mag_now,
                ap_int<32> log_mem[LOG_WORDS]);
