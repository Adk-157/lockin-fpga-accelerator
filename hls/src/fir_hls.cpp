#include "fir_hls.h"
void fir_filter(bool rst, samp_t x, bool &valid, fir_out_t &y)
{
#pragma HLS PIPELINE II=1
    static FirState st;
#pragma HLS ARRAY_PARTITION variable=st.hist complete
    if (rst) fir_reset(st);
    y = fir_step(st, x);
    valid = true;
}
