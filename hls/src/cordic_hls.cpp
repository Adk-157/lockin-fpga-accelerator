#include "cordic_hls.h"

void cordic_vectoring(cordic_in_t x_in, cordic_in_t y_in,
                      cordic_mag_t &mag_out, cordic_ang_t &ang_out)
{
#pragma HLS PIPELINE II=1
    const cordic_acc_t A180 = 180 << CORDIC_ANG_FRAC;      // 11520
    const cordic_acc_t FULL = 2 * A180;                    // 23040

    cordic_xy_t x = x_in;      // sign-extend; -(-32768) = 32768 fits in 18 bits
    cordic_xy_t y = y_in;
    x <<= CORDIC_GUARD;        // guard bits: extra LSBs below the input LSB
    y <<= CORDIC_GUARD;
    cordic_acc_t off = 0;

    // Pre-rotate into the right half plane (same order of tests as Python:
    // the sign of y is tested AFTER negation).
    if (x < 0) {
        x = -x;
        y = -y;
        off = (y >= 0) ? A180 : (cordic_acc_t)(-A180);
    }

    cordic_acc_t acc = 0;
    for (int i = 0; i < CORDIC_N_ITER; i++) {
#pragma HLS UNROLL
        cordic_xy_t xs = x >> i;       // arithmetic shift (signed type)
        cordic_xy_t ys = y >> i;
        if (y < 0) {
            x = x - ys;  y = y + xs;  acc -= CORDIC_ATAN_ROM[i];
        } else {
            x = x + ys;  y = y - xs;  acc += CORDIC_ATAN_ROM[i];
        }
    }

    // One fixed-point multiply for gain correction. x >= 0 here.
    ap_uint<17 + CORDIC_GUARD> xu = x;
    ap_uint<30 + CORDIC_GUARD> prod = xu * (ap_uint<13>)CORDIC_GAIN_RECIP;
    mag_out = prod >> (XY_FRAC + CORDIC_GUARD);   // drop the guard bits again

    // Wrap to [-180, 180): the Python used a modulo, but the pre-wrap value is
    // bounded (|v| <= 17912 < 11520 + 23040), so one conditional +-FULL is exact.
    cordic_acc_t a = acc + off;
    if (a >= A180)      a -= FULL;
    else if (a < -A180) a += FULL;
    ang_out = a;
}
