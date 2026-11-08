#include "dds_hls.h"

void dds_sincos(bool rst, phase_t phase_inc, dds_out_t &sin_out, dds_out_t &cos_out)
{
#pragma HLS PIPELINE II=1
    static phase_t phase = 0;
    if (rst) phase = 0;                              // first sample of a run starts at phase 0

    const phase_t QUARTER = 0x40000000u;             // +90 degrees = 2^30
    phase_t phase_cos = phase + QUARTER;             // 32-bit add: wraps mod 2^32 on purpose
    ap_uint<DDS_LUT_BITS> i_sin = phase >> (DDS_PHASE_BITS - DDS_LUT_BITS);       // top 10 bits
    ap_uint<DDS_LUT_BITS> i_cos = phase_cos >> (DDS_PHASE_BITS - DDS_LUT_BITS);

    // two reads per clock from one table -> dual-port memory
    sin_out = DDS_SINE_ROM[i_sin];
    cos_out = DDS_SINE_ROM[i_cos];

    phase = phase + phase_inc;                       // advance AFTER using the current phase
}
