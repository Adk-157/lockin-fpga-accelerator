// Self-checking testbench for poly: golden CSV (x_q,y_q,mag_q,ang_q,ang_check), BIT-EXACT.
#include <cstdio>
#include "poly_hls.h"
int main(int argc, char **argv)
{
    if (argc < 2) { printf("usage: %s <golden.csv>\n", argv[0]); return 2; }
    FILE *f = fopen(argv[1], "r");
    if (!f) { printf("cannot open %s\n", argv[1]); return 2; }
    char line[256];
    if (!fgets(line, sizeof line, f)) return 2;
    int n = 0, bad = 0, skipped = 0;
    long xq, yq, mq, aq, chk;
    while (fgets(line, sizeof line, f)) {
        if (sscanf(line, "%ld,%ld,%ld,%ld,%ld", &xq, &yq, &mq, &aq, &chk) != 5) continue;
        poly_mag_t m; poly_ang_t a;
        poly_vectoring((xy_in_t)xq, (xy_in_t)yq, m, a);
        bool ok = ((long)m == mq) && (!chk || (long)a == aq);
        if (!chk) skipped++;
        if (!ok) {
            if (bad < 10) printf("MISMATCH (%ld,%ld): mag got %ld exp %ld | ang got %ld exp %ld\n",
                                 xq, yq, (long)m, mq, (long)a, aq);
            bad++;
        }
        n++;
    }
    fclose(f);
    printf("%s: %d vectors, %d mismatches (%d angle checks skipped)\n", argv[1], n, bad, skipped);
    printf(bad ? "TEST FAILED\n" : "TEST PASSED\n");
    return bad ? 1 : 0;
}
