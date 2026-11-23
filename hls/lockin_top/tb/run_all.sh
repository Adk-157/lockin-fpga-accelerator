#!/bin/bash
# run_all.sh MUT   (MUT=0 is the real code; other numbers are deliberate breaks that must FAIL somewhere)
SP=/tmp/claude-0/-home-claude/42c94fb8-bad5-5395-9710-64cf0e5010af/scratchpad
MUT=${1:-0}
W=$SP/work2; HD=$SP/hdrs2; AP=$SP/apint/repo/include
mkdir -p $W
if [ ! -x $W/ref_all ]; then
    g++ -O2 -std=c++14 -w -I $AP -I $HD -c $HD/cordic_hls.cpp -DCORDIC_GUARD=3 -Dcordic_vectoring=cordic_vectoring_g3 -o $W/cordic_g3.o || exit 9
    g++ -O2 -std=c++14 -w -I $AP -I $HD -o $W/ref_all $SP/test2/ref_all.cpp $HD/mixer_hls.cpp $HD/dds_hls.cpp \
        $HD/cordic_hls.cpp $HD/lut_hls.cpp $HD/poly_hls.cpp $W/cordic_g3.o || exit 9
fi
[ -f $W/ext_in.bin ] || python3 -I $SP/test2/gen_inputs.py $W || exit 9
gcc -O2 -Wall -Wextra -DMUT=$MUT -I $HD -o $W/sw_mut$MUT $SP/sw2/lockin_sw.c || exit 9
SWB=$W/sw_mut$MUT; REF=$W/ref_all
total=0; fails=0
chk() {   # name fileA fileB
    total=$((total+1))
    if cmp -s "$2" "$3"; then echo "PASS $1"; else echo "FAIL $1 ($(cmp "$2" "$3" 2>&1 | head -1 | cut -c1-120))"; fails=$((fails+1)); fi
}
# --- mixer
$SWB dump_mix $W/mix_in.bin $W/mix_c.bin || exit 9
[ -f $W/mix_ref.bin ] || $REF mix $W/mix_in.bin $W/mix_ref.bin || exit 9
chk "mixer vs real mixer_hls.cpp (all x values x tie/extreme s,c + 2M random)" $W/mix_c.bin $W/mix_ref.bin
# --- DDS
for inc in 0 1 3 21474836 0x003FFFFF 0x00400000 0x12345678 0x40000000 0x80000000 0xFFFFFFFF; do
    $SWB dump_dds $inc 100000 $W/dds_$inc.c.bin || exit 9
    [ -f $W/dds_$inc.ref.bin ] || $REF dds $inc 100000 $W/dds_$inc.ref.bin || exit 9
    chk "dds phase_inc=$inc" $W/dds_$inc.c.bin $W/dds_$inc.ref.bin
done
# --- CIC + FIR
while read g n; do
    p=$W/chain_$g.$n
    $SWB dump_chain $g $n $p || exit 9
    [ -f $p.yref.bin ] || $REF chain $p.x.bin $p.yref.bin || exit 9
    chk "chain $g N=$n" $p.y.bin $p.yref.bin
done <<'EOF'
hash 4194304
hash 8388608
max 100000
min 100000
alt 100000
step 200000
mix 1000000
hash 1
hash 127
hash 128
hash 129
hash 5000
hash 1000
EOF
# --- extraction, 4 methods
$SWB dump_ext $W/ext_in.bin $W/ext_c || exit 9
[ -f $W/ext_ref.poly.bin ] || $REF ext $W/ext_in.bin $W/ext_ref || exit 9
for m in cordic0 cordic3 lut poly; do chk "extraction $m (magnitude and angle, 2.4M vectors)" $W/ext_c.$m.bin $W/ext_ref.$m.bin; done
# --- the user's own golden CSVs
total=$((total+1)); if $SWB csv_mixer $SP/csv/mixer_small.csv; then echo "PASS mixer_small.csv"; else echo "FAIL mixer_small.csv"; fails=$((fails+1)); fi
total=$((total+1)); if $SWB csv_chain $SP/csv/chain_R128_stream.csv; then echo "PASS chain_R128_stream.csv"; else echo "FAIL chain_R128_stream.csv"; fails=$((fails+1)); fi
# --- benchmark wiring: the hashes the benchmark prints must equal the ones from the real HLS code
$SWB bench 1048576 1 | sed -E -n 's/^(stage [0-9] .*hash=0x[0-9a-f]+).*/\1/p' > $W/bench_c.txt
$REF bench 1048576 > $W/bench_ref.txt
chk "bench stage hashes (N=1048576)" $W/bench_c.txt $W/bench_ref.txt
echo "MUT=$MUT: $fails of $total checks failed"
