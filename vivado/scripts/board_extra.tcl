# Extra board experiments (existing bitstream, JTAG only).
#   vivado -mode batch -source board_extra.tcl -tclargs T6 S6 S7        (any subset; default = T6 S6 S7)
#   T6 = throughput (5 s)   S6 = deep-noise steady state (-45..-63 dB input SNR)   S7 = weakest case, amp 8 (-63 dB)
# Run from lockin_top_pkg (same folder as lockin_hw.tcl and lockin_top.bit).
source lockin_hw.tcl
set sections $argv
if {[llength $sections] == 0} { set sections {T6 S6 S7} }
set base [pwd]/results_deep
file mkdir $base
hw_open [pwd]/lockin_top.bit
start_kernel
set F1 21474836
set ::NB 32

# ---- T6: throughput with a realistic setting (strong tone, some noise, adaptive) ----
wr $::R(kfix) 0; wr $::R(amp) 8192; wr $::R(sigma) 300
wr $::R(ph_ref) $F1; wr $::R(ph_sig) $F1; wr $::R(ph_off) 0; wr $::R(seed) 1; wr $::R(every) 64; wr $::R(xext) 0
wr $::R(ctl) [expr {$::ADAPT | $::RST}]; after 20; wr $::R(ctl) $::ADAPT
set rate [throughput 5]
set fh [open $base/T6_throughput.txt w]
puts $fh "samples_per_second $rate"
puts $fh "nominal_samples_per_second 200000"
puts $fh "ratio_to_nominal [expr {$rate/200000.0}]"
close $fh
puts "T6 DONE: rate = [expr {$rate/1e6}] MS/s"

# outputs per second -> choose log spacing so one run lasts about 90 s
set outs_per_s [expr {$rate/128.0}]
set every [expr {int($outs_per_s*90.0/512.0)}]
if {$every < 1} { set every 1 }
if {$every > 65535} { set every 65535 }
puts "log spacing every=$every outputs"

if {"S6" in $sections} {
    # input SNR (broadband) = (amp^2/2)/sigma^2 : amp 64 -> -45 dB, 32 -> -51 dB, 16 -> -57 dB  (sigma = 8000)
    set out $base/S6; file mkdir $out
    foreach amp {64 32 16} {
        run_exp S6_a${amp}_adapt [expr {$::ADAPT|$::LOGEN}] 0 $amp 8000 $F1 $F1 0 4321 $every 0 $out 600
        foreach k {8 12 16} {
            run_exp S6_a${amp}_fix${k} $::LOGEN $k $amp 8000 $F1 $F1 0 4321 $every 0 $out 600
        }
    }
}
if {"S7" in $sections} {
    # weakest case: amp 8 (-63 dB), adaptive only, two seeds
    set out $base/S7; file mkdir $out
    foreach {sd} {11 22} {
        run_exp S7_a8_adapt_seed$sd [expr {$::ADAPT|$::LOGEN}] 0 8 8000 $F1 $F1 0 $sd $every 0 $out 600
    }
}
puts "EXTRA DONE: $base"
exit
