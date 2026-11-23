#pragma once
// Mixer: multiplies the ADC sample by the DDS cosine and (minus) sine.
//   I = x * cos      Q = -(x * sin)        ->  I + jQ = x * e^{-j w t}
// Formats: x is Q3.13 (16 bit, 1.0 = 8192), DDS sine/cosine are Q1.15 (16 bit,
// peak 32767).  Product is Q4.28; rounding to Q3.13 = add half, shift right 15.
#include <ap_int.h>
typedef ap_int<16> adc_t;     // ADC sample, Q3.13
typedef ap_int<16> ref_t;     // DDS sine / cosine, Q1.15
typedef ap_int<16> mix_t;     // mixer output, Q3.13 (feeds the CIC)
constexpr int MIX_SHIFT = 15;
