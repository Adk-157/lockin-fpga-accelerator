// Shared front end for the LUT and polynomial methods (they are identical up to here):
//   |x|,|y| -> r = min/max as Q2.14 (needs a HARDWARE DIVIDER) -> back-fold to full circle.
// CORDIC does not use this file: it needs no divider.
#pragma once
#include <ap_int.h>
#include "lockin_golden_params.h"

typedef ap_int<16>  xy_in_t;      // Q3.13 input
typedef ap_uint<16> abs_t;        // |x| can be 32768, so UNSIGNED 16 bits
typedef ap_uint<15> ratio_t;      // r in [0, 16384] (Q2.14) -> 15 bits

struct ratio_info {
    ratio_t rq;          // min/max ratio
    bool    base_from_x; // true when |x| >= |y| (angle measured from the x axis)
    abs_t   mx;          // max(|x|,|y|)
    bool    is_zero;
    bool    neg_x, neg_y;
};

static inline ratio_info make_ratio(xy_in_t x, xy_in_t y)
{
    ratio_info r;
    ap_int<17> xe = x, ye = y;                 // room for -(-32768)
    abs_t ax = (xe < 0) ? (ap_int<17>)(-xe) : xe;
    abs_t ay = (ye < 0) ? (ap_int<17>)(-ye) : ye;
    r.neg_x = (x < 0);
    r.neg_y = (y < 0);
    r.is_zero = (ax == 0) && (ay == 0);
    r.base_from_x = (ax >= ay);
    abs_t num_v = r.base_from_x ? ay : ax;     // smaller operand
    r.mx        = r.base_from_x ? ax : ay;     // larger operand
    if (r.is_zero) {
        r.rq = 0;
    } else {
        ap_uint<30> num = (ap_uint<30>)num_v << R_FRAC;
        ap_uint<30> q = num / r.mx;            // <-- the divider
        r.rq = q;                              // <= 16384, fits 15 bits
    }
    return r;
}

// Octant angle -> full-circle angle. a90/a180 are in the method's angle units.
static inline ap_int<18> fold_angle(const ratio_info &r, ap_int<18> look,
                                    int a90, int a180)
{
    ap_int<18> a = r.base_from_x ? look : (ap_int<18>)(a90 - look);
    if (!r.neg_x && !r.neg_y) return a;
    if ( r.neg_x && !r.neg_y) return (ap_int<18>)(a180 - a);
    if ( r.neg_x &&  r.neg_y) return (ap_int<18>)(-(a180 - a));
    return (ap_int<18>)(-a);
}
