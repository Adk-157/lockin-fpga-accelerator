// Software run of the SAME lockin_top() source on the Cortex-A53 (no FPGA): samples per second.
// Build on the board:  g++ -O2 -std=c++14 -w -Iap_include -Isrc bench_a53.cpp src/lockin_top.cpp src/ctrl_x.cpp src/ctrl_hls.cpp src/cordic_hls.cpp src/lut_hls.cpp src/poly_hls.cpp -o bench_a53
// Run:                 ./bench_a53 20000000
#include <cstdio>
#include <cstdlib>
#include <cstdint>
#include <ctime>
#include "lockin_top.h"
static ap_int<32> logm[LOG_WORDS];
int main(int argc, char **argv)
{
    long long N = (argc > 1) ? atoll(argv[1]) : 10000000LL;
    ap_uint<32> oc, ln, st; ap_uint<5> k; ap_int<32> mi, mq; ap_uint<16> mag;
    const uint32_t F1 = 21474836u;
    auto call = [&](uint32_t ctl) {
        lockin_top(ctl, 0, F1, F1, 0, (ap_int<16>)8192, (ap_uint<16>)300, 1234, 64, (ap_int<16>)0, oc, ln, st, k, mi, mq, mag, logm);
    };
    call(CTL_ADAPT | CTL_RST);
    struct timespec a, b; clock_gettime(CLOCK_MONOTONIC, &a);
    for (long long i = 0; i < N; i++) call(CTL_ADAPT);
    clock_gettime(CLOCK_MONOTONIC, &b);
    double s = (b.tv_sec - a.tv_sec) + 1e-9 * (b.tv_nsec - a.tv_nsec);
    printf("A53_SOFTWARE: %lld samples in %.3f s -> %.4f Msample/s  (outputs %u, k=%u, mag=%u)\n",
           N, s, N / s / 1e6, (unsigned)oc, (unsigned)k, (unsigned)mag);
    return 0;
}
