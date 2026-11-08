// Self-checking testbench: reads golden CSV (x,s,c,i,q), drives the mixer,
// compares both outputs on every row; also checks that valid_out follows
// valid_in during random idle cycles (outputs ignored when not valid).
#include <cstdio>
#include <cstdlib>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include "mixer_hls.h"

int main(int argc, char **argv)
{
    if (argc < 2) { std::printf("usage: tb_mixer golden.csv\n"); return 2; }
    std::ifstream f(argv[1]);
    if (!f) { std::printf("cannot open %s\n", argv[1]); return 2; }
    std::string line; std::getline(f, line);
    long long n = 0, mism = 0, idle_bad = 0; unsigned lfsr = 99;
    while (std::getline(f, line)) {
        std::stringstream ss(line); std::string t; long long v[5]; int i = 0;
        while (std::getline(ss, t, ',') && i < 5) v[i++] = std::atoll(t.c_str());
        bool vo; mix_t io, qo;
        lfsr = lfsr * 1664525u + 1013904223u;
        if ((lfsr >> 20) % 4 == 0) {                         // an idle cycle with garbage data first
            mixer(false, (adc_t)(lfsr >> 4), (ref_t)(lfsr >> 9), (ref_t)(lfsr >> 2), vo, io, qo);
            if (vo) idle_bad++;
        }
        mixer(true, (adc_t)v[0], (ref_t)v[1], (ref_t)v[2], vo, io, qo);
        if (!vo || (long long)io != v[3] || (long long)qo != v[4]) {
            if (mism < 5) std::printf("MISMATCH row %lld: x=%lld s=%lld c=%lld  I %d/%lld  Q %d/%lld (got/want)\n",
                                      n, v[0], v[1], v[2], (int)io, v[3], (int)qo, v[4]);
            mism++;
        }
        n++;
    }
    std::printf("%s: %lld rows, mismatches = %lld, valid errors = %lld  ->  %s\n",
                argv[1], n, mism, idle_bad, (mism == 0 && idle_bad == 0) ? "PASS" : "FAIL");
    return (mism == 0 && idle_bad == 0) ? 0 : 1;
}
