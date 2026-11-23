// Self-checking testbench: reads a golden CSV (I,Q,k,zI,zQ,vh,u), drives the
// HLS block, compares EVERY output and the internal vh/u after EVERY sample.
// Extra checks: random idle cycles between samples (valid_in = 0), and a reset
// in the middle followed by a replay.
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include "ctrl_hls.h"

struct Row { long long I, Q, k, zI, zQ, vh, u; };

static std::vector<Row> load(const char *path)
{
    std::ifstream f(path);
    if (!f) { std::printf("cannot open %s\n", path); std::exit(2); }
    std::string line; std::getline(f, line);              // header
    std::vector<Row> v;
    while (std::getline(f, line)) {
        std::stringstream ss(line); std::string t; long long x[7]; int i = 0;
        while (std::getline(ss, t, ',') && i < 7) x[i++] = std::atoll(t.c_str());
        v.push_back({x[0], x[1], x[2], x[3], x[4], x[5], x[6]});
    }
    return v;
}

static long long mism = 0;
static bool check_internals = false;   // vh/u are only visible in the C model, NOT in RTL co-simulation
static void feed_check(const Row &r, bool idle_gaps, unsigned &lfsr, long long idx)
{
    k_t k; z_t zI, zQ;
    if (idle_gaps) {                                        // 0..2 idle clocks with garbage data
        lfsr = lfsr * 1664525u + 1013904223u;
        for (unsigned g = 0; g < ((lfsr >> 16) % 3); g++)
            adaptive_ctrl(false, false, (in_t)(lfsr >> 8), (in_t)(lfsr >> 3), k, zI, zQ);
    }
    adaptive_ctrl(false, true, (in_t)r.I, (in_t)r.Q, k, zI, zQ);
    CtrlDebug d = ctrl_debug();
    bool bad = (long long)k != r.k || zI.to_int64() != r.zI || zQ.to_int64() != r.zQ;
    if (check_internals) bad = bad || d.vh != r.vh || d.u != r.u;
    if (bad) {
        if (mism < 5)
            std::printf("MISMATCH at sample %lld: k %d/%lld zI %lld/%lld zQ %lld/%lld vh %lld/%lld u %lld/%lld (got/want)\n",
                        idx, (int)k, r.k, (long long)zI.to_int64(), r.zI, (long long)zQ.to_int64(), r.zQ,
                        d.vh, r.vh, d.u, r.u);
        mism++;
    }
}

int main(int argc, char **argv)
{
    if (argc < 2) { std::printf("usage: tb_ctrl golden.csv [internals]\n"); return 2; }
    // C-simulation: pass a 2nd argument  internals  to also check vh and u.
    // C/RTL co-simulation: pass ONLY the csv path (the RTL has no vh/u to look at).
    check_internals = (argc > 2 && std::strcmp(argv[2], "internals") == 0);
    std::vector<Row> g = load(argv[1]);
    k_t k; z_t zI, zQ; unsigned lfsr = 12345;

    // pass 1: back-to-back samples
    adaptive_ctrl(true, false, 0, 0, k, zI, zQ);
    for (size_t i = 0; i < g.size(); i++) feed_check(g[i], false, lfsr, i);
    // pass 2: random idle cycles between samples (state must not change when valid_in = 0)
    adaptive_ctrl(true, false, 0, 0, k, zI, zQ);
    for (size_t i = 0; i < g.size(); i++) feed_check(g[i], true, lfsr, i);
    // pass 3: reset in the middle of a run, then replay from the start
    adaptive_ctrl(true, false, 0, 0, k, zI, zQ);
    for (size_t i = 0; i < g.size() / 2 && i < 3000; i++) feed_check(g[i], false, lfsr, i);
    adaptive_ctrl(true, false, 0, 0, k, zI, zQ);
    for (size_t i = 0; i < g.size(); i++) feed_check(g[i], false, lfsr, i);

    std::printf("%s: %zu samples x 3 passes (%s), mismatches = %lld  ->  %s\n",
                argv[1], g.size(), check_internals ? "outputs + internal vh/u" : "outputs only", mism,
                mism == 0 ? "PASS" : "FAIL");
    return mism == 0 ? 0 : 1;
}
