#pragma once
// Adaptive-bandwidth controller, extended copy of ctrl_hls.cpp with two additions:
//   adapt = 1 : behaviour is IDENTICAL to adaptive_ctrl() (checked bit-for-bit against it)
//   adapt = 0 : fixed bandwidth, the averager shift k is held at kfix (the baseline)
// and it exposes the online SNR estimate (vm16 = noise-variance estimate, sig = signal-power
// estimate, both as the rule sees them every 32nd sample, saturated to 32 bit).
#include "ctrl_params.h"
void adaptive_ctrl_x(bool rst, bool valid_in, in_t I, in_t Q, bool adapt, k_t kfix,
                     k_t &k_out, z_t &zI_out, z_t &zQ_out,
                     ap_int<32> &vm16_out, ap_int<32> &sig_out);
