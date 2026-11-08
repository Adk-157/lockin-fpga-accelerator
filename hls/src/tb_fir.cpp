// Self-checking stream testbench for fir: CSV rst,x_q,valid,y_q, compared BIT-EXACT.
#include <cstdio>
#include "fir_hls.h"
int main(int argc, char **argv)
{
    if (argc < 2) { printf("usage: %s <stream.csv>\n", argv[0]); return 2; }
    FILE *f = fopen(argv[1], "r");
    if (!f) { printf("cannot open %s\n", argv[1]); return 2; }
    char line[256];
    if (!fgets(line, sizeof line, f)) return 2;
    long n = 0, nout = 0, bad = 0, rst, xq, ev, ey;
    while (fgets(line, sizeof line, f)) {
        if (sscanf(line, "%ld,%ld,%ld,%ld", &rst, &xq, &ev, &ey) != 4) continue;
        bool valid; fir_out_t y;
        fir_filter(rst != 0, (samp_t)xq, valid, y);
        bool ok = ((long)valid == ev) && (!ev || (long)y == ey);
        if (ev) nout++;
        if (!ok) {
            if (bad < 10) printf("MISMATCH at sample %ld (x=%ld): valid got %d exp %ld | y got %ld exp %ld\n",
                                 n, xq, (int)valid, ev, (long)y, ey);
            bad++;
        }
        n++;
    }
    fclose(f);
    printf("%s: %ld input samples, %ld output samples, %ld mismatches\n", argv[1], n, nout, bad);
    printf(bad ? "TEST FAILED\n" : "TEST PASSED\n");
    return bad ? 1 : 0;
}
