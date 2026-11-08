// LUT method: 256-entry atan and magnitude-scale tables + linear interpolation.
#pragma once
#include "lockin_common.h"
typedef ap_uint<16> lut_mag_t;    // unsigned: max 46340
typedef ap_int<16>  lut_ang_t;    // Q10.6, range +-11520
void lut_vectoring(xy_in_t x_in, xy_in_t y_in, lut_mag_t &mag_out, lut_ang_t &ang_out);
