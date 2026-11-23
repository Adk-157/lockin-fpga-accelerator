// DDS: 32-bit phase accumulator + 1024-entry sine table, sine AND cosine outputs.
//   f_out = phase_inc * f_clk / 2^32      (phase_inc is set by the processor at run time)
// Cosine reads the SAME table a quarter turn ahead, so one table serves both.
#pragma once
#include <ap_int.h>
#include "dds_params.h"

typedef ap_uint<32> phase_t;      // phase accumulator / increment (wraps by design)
typedef ap_int<16>  dds_out_t;    // table values are +-32767 (Q1.15)

void dds_sincos(bool rst, phase_t phase_inc, dds_out_t &sin_out, dds_out_t &cos_out);
