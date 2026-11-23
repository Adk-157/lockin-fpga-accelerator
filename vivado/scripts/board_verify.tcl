# vivado -mode batch -source board_verify.tcl   (run from lockin_top_pkg, board powered + JTAG connected)
source lockin_hw.tcl
set out [pwd]/results_verify
file mkdir $out
hw_open [pwd]/lockin_top.bit
start_kernel
set F1 21474836
# name flags kfix amp sigma ph_ref ph_sig ph_off seed every xext
run_exp V1 [expr {$::ADAPT|$::LOGEN}] 0 8192 60 $F1 $F1 0 1234 1 0 $out
run_exp V2 $::LOGEN 7 8192 60 $F1 $F1 0 1234 1 0 $out
run_exp V3 [expr {$::ADAPT|$::LOGEN}] 0 100 5 $F1 $F1 0xC0000000 4242 1 0 $out
run_exp V4 [expr {$::ADAPT|$::LOGEN}] 0 32767 65535 $F1 $F1 0 7 1 0 $out
run_exp V5 [expr {$::ADAPT|$::LOGEN|$::EXT}] 0 0 0 $F1 $F1 0 12 1 -32768 $out
run_exp V6 [expr {$::ADAPT|$::LOGEN}] 0 -8192 1000 $F1 [expr {$F1+12345}] 0 31337 1 0 $out
run_exp V7 [expr {$::ADAPT|$::LOGEN}] 0 8192 60 $F1 $F1 0 1234 40 0 $out
throughput 10
puts "VERIFY CAPTURE DONE: $out"
exit
