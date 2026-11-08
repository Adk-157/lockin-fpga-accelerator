#include "cic_hls.h"
void cic_decimate(bool rst, samp_t x, bool &valid, samp_t &y)
{
#pragma HLS PIPELINE II=1
    static CicState st;
#pragma HLS ARRAY_PARTITION variable=st.integ complete
#pragma HLS ARRAY_PARTITION variable=st.comb complete
    if (rst) cic_reset(st);
    cic_step(st, x, valid, y);
}
