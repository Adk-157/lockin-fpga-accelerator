#!/bin/bash
# usage: build.sh SRC_DIR OUT_BIN
SRC=${1:-../src}; OUT=${2:-tb_top}
H=/home/claude/lockin/apint/repo/include
gcc -O2 -w -c ref_pipe.c -o ref_pipe.o || exit 1
g++ -O2 -std=c++14 -w -I$SRC -I$H tb_top.cpp ref_pipe.o $SRC/lockin_top.cpp $SRC/ctrl_x.cpp $SRC/ctrl_hls.cpp $SRC/cordic_hls.cpp $SRC/lut_hls.cpp $SRC/poly_hls.cpp -o $OUT
