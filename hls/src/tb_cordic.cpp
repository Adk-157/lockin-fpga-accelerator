// Self-checking testbench: reads a golden CSV (x_q,y_q,mag_q,ang_q,ang_check),
// compares BIT-EXACT, prints the first mismatches, returns non-zero on any failure.
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include "cordic_hls.h"

int main(int argc, char **argv)
{
    if (argc < 2) { printf("usage: %s <golden.csv>\n", argv[0]); return 2; }
    FILE *f = fopen(argv[1], "r");
    if (!f) { printf("cannot open %s\n", argv[1]); return 2; }
    char line[256];
    if (!fgets(line, sizeof line, f)) return 2;           // header
    int n = 0, bad = 0, ang_skipped = 0;
    long xq, yq, mq, aq, chk;
    while (fgets(line, sizeof line, f)) {
        if (sscanf(line, "%ld,%ld,%ld,%ld,%ld", &xq, &yq, &mq, &aq, &chk) != 5) continue;
        cordic_mag_t m; cordic_ang_t a;
        cordic_vectoring((cordic_in_t)xq, (cordic_in_t)yq, m, a);
        bool mag_ok = (long)m == mq;
        bool ang_ok = chk ? ((long)a == aq) : true;
        if (!chk) ang_skipped++;
        if (!(mag_ok && ang_ok)) {
            if (bad < 10)
                printf("MISMATCH (%ld,%ld): mag got %ld exp %ld | ang got %ld exp %ld\n",
                       xq, yq, (long)m, mq, (long)a, aq);
            bad++;
        }
        n++;
    }
    fclose(f);
    printf("%s: %d vectors, %d mismatches (%d angle checks skipped as don't-care)\n",
           argv[1], n, bad, ang_skipped);
    printf(bad ? "TEST FAILED\n" : "TEST PASSED\n");
    return bad ? 1 : 0;
}
