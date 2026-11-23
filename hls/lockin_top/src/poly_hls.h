// Polynomial method: Horner evaluation (saturating, fixed-point) of an order-5
// atan polynomial and an order-3 magnitude-scale polynomial. Uses DSP multiplies.
#pragma once
#include "lockin_common.h"
typedef ap_uint<16> poly_mag_t;   // unsigned: max 46345
// Output angle stays in Q.8 to match the validated model (P_AF = 8). +-180 deg =
// +-46080 does NOT fit 16 bits, so the angle word is 17 signed bits. (Q10.6 would fit 16.)
typedef ap_int<17>  poly_ang_t;
void poly_vectoring(xy_in_t x_in, xy_in_t y_in, poly_mag_t &mag_out, poly_ang_t &ang_out);
