#include "chain_hls.h"
// CIC decimator followed by the compensating FIR; the FIR advances only when the
// CIC produces a decimated sample (so it runs at the low output rate).
void cic_fir_chain(bool rst, samp_t x, bool &valid, fir_out_t &y)
{
#pragma HLS PIPELINE II=1
    static CicState cs;
    static FirState fs;
#pragma HLS ARRAY_PARTITION variable=cs.integ complete
#pragma HLS ARRAY_PARTITION variable=cs.comb complete
#pragma HLS ARRAY_PARTITION variable=fs.hist complete
    if (rst) { cic_reset(cs); fir_reset(fs); }
    samp_t d;
    cic_step(cs, x, valid, d);
    y = valid ? fir_step(fs, d) : (fir_out_t)0;
}
