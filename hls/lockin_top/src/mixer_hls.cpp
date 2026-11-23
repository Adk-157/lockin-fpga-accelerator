#include "mixer_hls.h"

// Round to nearest (ties up) and saturate to 16 bit.
static mix_t round_sat(ap_int<33> p)
{
    ap_int<34> r = ((ap_int<34>)p + (ap_int<34>(1) << (MIX_SHIFT - 1))) >> MIX_SHIFT;
    if (r > 32767)  return (mix_t)32767;      // only possible for (-1.0 x -4.0)-type products
    if (r < -32768) return (mix_t)-32768;
    return (mix_t)r;
}

void mixer(bool valid_in, adc_t x, ref_t s, ref_t c,
           bool &valid_out, mix_t &i_out, mix_t &q_out)
{
#pragma HLS PIPELINE II=1
    ap_int<32> pc = x * c;                    // Q4.28
    ap_int<32> ps = x * s;
    ap_int<33> pq = -(ap_int<33>)ps;          // minus sine
    i_out = round_sat((ap_int<33>)pc);
    q_out = round_sat(pq);
    valid_out = valid_in;
}
