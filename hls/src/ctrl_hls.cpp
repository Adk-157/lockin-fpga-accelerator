#include "ctrl_hls.h"

// Shift right by b with round-to-nearest (b <= 0: shift left).
static wide_t rs(wide_t x, int b)
{
    if (b <= 0) return x << (-b);
    return (x + (wide_t(1) << (b - 1))) >> b;
}

// floor(log2(v)) for v >= 1
template <int W> static int flog2(ap_uint<W> v)
{
    int r = 0;
    for (int i = W - 1; i >= 0; i--) {
#pragma HLS UNROLL
        if (v[i]) { r = i; break; }
    }
    return r;
}

namespace {
struct State {
    in_t hI[LAG], hQ[LAG];           // last 32 inputs (oldest first)
    ap_uint<6>  hcnt;                // how many stored (0..32)
    ap_uint<5>  n32;                 // sample count mod 32
    ap_uint<7>  npre;                // samples skipped so far (0..SKIP)
    ap_uint<10> nvc;                 // noise-meter readings (saturates at 1023)
    ap_uint<22> m;                   // averager samples (saturates at 2^21)
    vh_t vh;
    z_t  zI, zQ;
    u_t  u;
    ap_uint<5> sprev;
    k_t  k;
    State() { reset(); }
    void reset() {
        for (int i = 0; i < LAG; i++) { hI[i] = 0; hQ[i] = 0; }
        hcnt = 0; n32 = 0; npre = 0; nvc = 0; m = 0;
        vh = 0; zI = 0; zQ = 0; u = 0; sprev = 0; k = KMIN;
    }
};
State st;
}

#ifndef __SYNTHESIS__
CtrlDebug ctrl_debug() { return CtrlDebug{ (long long)st.vh, (long long)st.u }; }
#endif

void adaptive_ctrl(bool rst, bool valid_in, in_t I, in_t Q,
                   k_t &k_out, z_t &zI_out, z_t &zQ_out)
{
// Samples from the chain arrive at least 128 clocks apart, so the controller may
// take up to 16 clocks per sample. II=1 forced the whole update into ONE clock
// (Vitis estimate: 23 ns against a 10 ns target).
#pragma HLS PIPELINE II=16
#pragma HLS ARRAY_PARTITION variable=st.hI complete
#pragma HLS ARRAY_PARTITION variable=st.hQ complete
    if (rst) {
        st.reset();
    } else if (valid_in) {
        st.n32++;                                           // n mod 32 (wraps)
        if (st.npre < SKIP) {                               // skip start-up samples
            st.npre++;
        } else {
            // ---- noise meter ----------------------------------------------
            if (st.hcnt == LAG) {
                diff_t dI = I - st.hI[0];
                diff_t dQ = Q - st.hQ[0];
                sraw_t sraw = (sraw_t)(dI * dI) + (sraw_t)(dQ * dQ);
                wide_t T = ((wide_t)sraw << FV);
                T = (T + 2) >> 2;
                if (st.nvc < 1023) st.nvc++;
                int j = flog2<10>(st.nvc);
                if (j > JMAX) j = JMAX;
                wide_t dd = T - (wide_t)st.vh + ((wide_t(1) << j) >> 1);
                st.vh = (vh_t)((wide_t)st.vh + (dd >> j));
            }
            // push the new sample into the 32-deep history
            for (int i = 0; i < LAG - 1; i++) { st.hI[i] = st.hI[i + 1]; st.hQ[i] = st.hQ[i + 1]; }
            st.hI[LAG - 1] = I; st.hQ[LAG - 1] = Q;
            if (st.hcnt < LAG) st.hcnt++;

            if (st.nvc >= 32) {
                // ---- averager -------------------------------------------
                if (st.m < (1 << 21)) st.m++;
                int lg = flog2<22>(st.m);
                int s = ((int)st.k < lg) ? (int)st.k : lg;
                wide_t half = (wide_t(1) << s) >> 1;
                wide_t eI = ((wide_t)I << FA) - (wide_t)st.zI + half;
                wide_t eQ = ((wide_t)Q << FA) - (wide_t)st.zQ + half;
                st.zI = (z_t)((wide_t)st.zI + (eI >> s));
                st.zQ = (z_t)((wide_t)st.zQ + (eQ >> s));
                // ---- variance tracker (u = var * 2^s) ---------------------
                if (s != (int)st.sprev) {
                    st.u = (u_t)rs((wide_t)st.u, (int)st.sprev - s);
                    st.sprev = s;
                }
                ap_uint<60> t139 = (ap_uint<60>)st.vh * C_NUM;
                wide_t cvh = (wide_t)((t139 + 64) >> 7);
                wide_t un;
                if (s == 0) {
                    un = rs(cvh, FV - FU);
                } else {
                    wide_t uu = (wide_t)st.u;
                    un = uu - rs(uu, s - 1) + rs(uu, 2 * s) + rs(cvh, s + FV - FU);
                }
                st.u = (u_t)un;
                // ---- k rule, every 32 samples -----------------------------
                if (st.n32 == 0) {
#if CTRL_AW
                    if ((int)st.k > s) st.k = s;            // anti-windup
#endif
                    wide_t vm16 = rs((wide_t)st.u, FU + s - 16);
                    m8_t mI = (m8_t)rs((wide_t)st.zI, FA - 8);
                    m8_t mQ = (m8_t)rs((wide_t)st.zQ, FA - 8);
                    wide_t sig = (wide_t)(mI * mI) + (wide_t)(mQ * mQ) - 2 * vm16;
                    if (sig < 0) sig = 0;
                    if (vm16 > (sig >> 7) && st.k < KMAX)      st.k = st.k + 1;
                    else if (vm16 < (sig >> 9) && st.k > KMIN) st.k = st.k - 1;
                }
            }
        }
    }
    k_out = st.k; zI_out = st.zI; zQ_out = st.zQ;
}
