#include "poly_hls.h"

// Horner with the same saturation as the Python model: after every step the
// accumulator is clamped to a signed WB-bit word.
template <int WB, int NC>
static ap_int<WB> horner(ratio_t rq, const int (&c)[NC])
{
    const ap_int<40> HI = (ap_int<40>(1) << (WB - 1)) - 1;
    const ap_int<40> LO = -(ap_int<40>(1) << (WB - 1));
    ap_int<WB> acc = c[0];
    for (int k = 1; k < NC; k++) {
#pragma HLS UNROLL
        ap_int<40> t = (((ap_int<40>)acc * (ap_int<40>)rq) >> R_FRAC) + c[k];
        acc = (t > HI) ? (ap_int<WB>)HI : (t < LO) ? (ap_int<WB>)LO : (ap_int<WB>)t;
    }
    return acc;
}

void poly_vectoring(xy_in_t x_in, xy_in_t y_in, poly_mag_t &mag_out, poly_ang_t &ang_out)
{
#pragma HLS PIPELINE II=1
    ratio_info r = make_ratio(x_in, y_in);

    ap_int<POLY_ATAN_WORD> look_a = horner<POLY_ATAN_WORD>(r.rq, POLY_ATAN_COEFFS);
    ap_int<POLY_MAG_WORD>  scale  = horner<POLY_MAG_WORD>(r.rq, POLY_MAG_COEFFS);

    ap_int<40> mprod = (ap_int<40>)r.mx * (ap_int<40>)scale;
    ap_uint<16> mag = mprod >> POLY_MAG_FRAC;

    ap_int<18> ang = fold_angle(r, look_a, 90 << POLY_ATAN_FRAC, 180 << POLY_ATAN_FRAC);

    mag_out = r.is_zero ? (poly_mag_t)0 : (poly_mag_t)mag;
    ang_out = r.is_zero ? (poly_ang_t)0 : (poly_ang_t)ang;
}
