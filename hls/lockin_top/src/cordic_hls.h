// CORDIC vectoring (magnitude + phase) - bit-exact port of the Phase 2 Python model.
#pragma once
#include <ap_int.h>
#include "lockin_golden_params.h"

// Widths are NOT arbitrary - each comes from the observed/derived extremes in Step 1:
//   in  : Q3.13 signed 16-bit (same as Phase 2)
//   xy  : 18 signed bits inside the loop (CORDIC gain 1.6468 * |v|max 46341 = 76313 < 2^17)
//   ang : Q10.6, 16 signed bits. The pre-wrap sum reaches +-17912 (fits in 16 signed
//         bits) and is wrapped back to [-11520, 11519] before output.
//   mag : UNSIGNED 16 bits (max 46345 > 32767, so signed 16 would overflow)
// Number of extra fractional "guard" bits carried in the x/y datapath.
//   0 = baseline (bit-exact with the validated Phase 2 model)
//   3 = guard-bit variant (more accurate at small amplitudes; golden vectors come
//       from the Step 1b cell, checked against float64, not from Phase 2)
#ifndef CORDIC_GUARD
#define CORDIC_GUARD 0
#endif

typedef ap_int<16>  cordic_in_t;
typedef ap_int<18 + CORDIC_GUARD>  cordic_xy_t;
typedef ap_int<16>  cordic_acc_t;
typedef ap_int<16>  cordic_ang_t;
typedef ap_uint<16> cordic_mag_t;

void cordic_vectoring(cordic_in_t x_in, cordic_in_t y_in,
                      cordic_mag_t &mag_out, cordic_ang_t &ang_out);
