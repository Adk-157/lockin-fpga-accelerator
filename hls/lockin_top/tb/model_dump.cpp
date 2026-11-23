// Expected board logs: run the verified C model of lockin_top with exactly the same parameters as board_verify.tcl
#include <cstdio>
#include <cstdint>
#include <string>
#include "lockin_top.h"
static ap_int<32> logm[LOG_WORDS];
static void dump(const char *name, uint32_t flags, int kfix, int amp, int sigma, uint32_t pr, uint32_t ps, uint32_t po,
                 uint32_t seed, int every, int xext)
{
    ap_uint<32> oc, ln, st; ap_uint<5> k; ap_int<32> mi, mq; ap_uint<16> mag;
    auto call = [&](uint32_t ctl) {
        lockin_top(ctl, kfix, pr, ps, po, (int16_t)amp, (uint16_t)sigma, seed, every, (int16_t)xext, oc, ln, st, k, mi, mq, mag, logm);
    };
    call(flags | CTL_RST | CTL_LOG_CLR | CTL_LOG_EN);
    long long guard = 0;
    do { call(flags | CTL_LOG_EN); } while (!(st & 1) && ++guard < 200000000LL);
    std::string fn = std::string("expect/") + name + ".txt";
    FILE *f = fopen(fn.c_str(), "w");
    fprintf(f, "# model name=%s out_count_at_full=%u log_n=%u\n", name, (unsigned)oc, (unsigned)ln);
    for (int i = 0; i < LOG_WORDS; i++) fprintf(f, "%08x\n", (uint32_t)logm[i]);
    fclose(f);
}
int main()
{
    const uint32_t F1 = 21474836u, A = CTL_ADAPT, E = CTL_USE_EXT;
    dump("V1", A, 0, 8192, 60, F1, F1, 0, 1234, 1, 0);
    dump("V2", 0, 7, 8192, 60, F1, F1, 0, 1234, 1, 0);
    dump("V3", A, 0, 100, 5, F1, F1, 0xC0000000u, 4242, 1, 0);
    dump("V4", A, 0, 32767, 65535, F1, F1, 0, 7, 1, 0);
    dump("V5", A | E, 0, 0, 0, F1, F1, 0, 12, 1, -32768);
    dump("V6", A, 0, -8192, 1000, F1, F1 + 12345, 0, 31337, 1, 0);
    dump("V7", A, 0, 8192, 60, F1, F1, 0, 1234, 40, 0);
    return 0;
}
