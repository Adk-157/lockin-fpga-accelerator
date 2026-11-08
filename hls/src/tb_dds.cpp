// Self-checking testbench for the DDS. CSV columns: rst,phase_inc,sin_q,cos_q
// phase_inc goes up to 2^32-1, so fields are parsed as 64-bit (a plain 'long' is only
// 32 bits on Windows and would overflow).
#include <cstdio>
#include <cstdlib>
#include "dds_hls.h"

static bool parse4(const char *s, long long v[4])
{
    char *end;
    for (int k = 0; k < 4; k++) {
        v[k] = strtoll(s, &end, 10);
        if (end == s) return false;
        s = end;
        if (k < 3) { if (*s != ',') return false; s++; }
    }
    return true;
}

int main(int argc, char **argv)
{
    if (argc < 2) { printf("usage: %s <dds_stream.csv>\n", argv[0]); return 2; }
    FILE *f = fopen(argv[1], "r");
    if (!f) { printf("cannot open %s\n", argv[1]); return 2; }
    char line[256];
    if (!fgets(line, sizeof line, f)) return 2;
    long n = 0, bad = 0;
    long long v[4];
    while (fgets(line, sizeof line, f)) {
        if (!parse4(line, v)) continue;
        dds_out_t s, c;
        dds_sincos(v[0] != 0, (phase_t)(unsigned long long)v[1], s, c);
        if ((long long)s != v[2] || (long long)c != v[3]) {
            if (bad < 10)
                printf("MISMATCH at clock %ld (inc=%lu): sin got %ld exp %ld | cos got %ld exp %ld\n",
                       n, (unsigned long)v[1], (long)s, (long)v[2], (long)c, (long)v[3]);
            bad++;
        }
        n++;
    }
    fclose(f);
    printf("%s: %ld clocks, %ld mismatches\n", argv[1], n, bad);
    printf(bad ? "TEST FAILED\n" : "TEST PASSED\n");
    return bad ? 1 : 0;
}
