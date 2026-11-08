#include "lut_hls.h"

void lut_vectoring(xy_in_t x_in, xy_in_t y_in, lut_mag_t &mag_out, lut_ang_t &ang_out)
{
#pragma HLS PIPELINE II=1
    const int SIZE = 1 << LUT_TABLE_BITS;
    ratio_info r = make_ratio(x_in, y_in);

    // index + fraction. scaled = r * (SIZE-1); integer part picks the entry.
    ap_uint<22> scaled = r.rq * (SIZE - 1);
    ap_uint<22> i_full = scaled >> R_FRAC;
    ap_uint<8>  i0 = (i_full > SIZE - 2) ? (ap_uint<8>)(SIZE - 2) : (ap_uint<8>)i_full;
    ap_int<24>  fr = (ap_int<24>)scaled - ((ap_int<24>)i0 << R_FRAC);

    // two reads per table per sample (entry i0 and i0+1) -> needs a dual-port ROM
    ap_int<20> a0 = LUT_ATAN_ROM[i0], a1 = LUT_ATAN_ROM[i0 + 1];
    ap_int<20> s0 = LUT_MAG_ROM[i0],  s1 = LUT_MAG_ROM[i0 + 1];
    ap_int<20> look_a = a0 + (ap_int<20>)(((ap_int<44>)(a1 - a0) * fr) >> R_FRAC);
    ap_int<20> look_s = s0 + (ap_int<20>)(((ap_int<44>)(s1 - s0) * fr) >> R_FRAC);

    ap_uint<34> mprod = (ap_uint<34>)r.mx * (ap_uint<20>)look_s;
    ap_uint<16> mag = mprod >> LUT_SCALE_FRAC;

    ap_int<18> ang = fold_angle(r, look_a, 90 << LUT_ANG_FRAC, 180 << LUT_ANG_FRAC);

    mag_out = r.is_zero ? (lut_mag_t)0 : (lut_mag_t)mag;
    ang_out = r.is_zero ? (lut_ang_t)0 : (lut_ang_t)ang;
}
