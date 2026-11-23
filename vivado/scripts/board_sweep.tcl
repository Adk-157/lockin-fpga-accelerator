# vivado -mode batch -source board_sweep.tcl -tclargs S1 S2 S3 S4 S5     (any subset; default = all)
source lockin_hw.tcl
set sections $argv
if {[llength $sections] == 0} { set sections {S1 S2 S3 S4 S5} }
set base [pwd]/results_sweep
file mkdir $base
hw_open [pwd]/lockin_top.bit
start_kernel
set F1 21474836

if {"S1" in $sections} {
    # S1: steady-state accuracy vs noise.  true |I+jQ| = amp/2 = 4096.  every=64 -> log spans 32768 outputs
    set out $base/S1; file mkdir $out
    foreach sg {0 100 300 1000 3000 8000} {
        foreach k {4 6 8 10 12} {
            run_exp S1_fix${k}_s$sg $::LOGEN $k 8192 $sg $F1 $F1 0 777 64 0 $out
        }
        run_exp S1_adapt_s$sg [expr {$::ADAPT|$::LOGEN}] 0 8192 $sg $F1 $F1 0 777 64 0 $out
    }
}
if {"S2" in $sections} {
    # S2: step responses (warm-up 200000 outputs, then one register is changed while logging)
    set out $base/S2; file mkdir $out
    foreach {tag kf ev} {fix4 4 8  fix8 8 16  fix12 12 64  adapt 0 32} {
        set fl [expr {$kf == 0 ? ($::ADAPT) : 0}]
        run_step S2_ampdown_$tag $fl $kf 8192 300 $ev 200000 amp 1024 $out
        run_step S2_ampup_$tag   $fl $kf 1024 300 $ev 200000 amp 8192 $out
        run_step S2_noiseup_$tag $fl $kf 8192 100 $ev 200000 sigma 3000 $out
        run_step S2_noisedn_$tag $fl $kf 8192 3000 $ev 200000 sigma 100 $out
    }
}
if {"S3" in $sections} {
    # S3: extractor accuracy sweep. k=0 -> extractor input is exactly the FIR output (yI,yQ). 1 record set per run.
    set out $base/S3b; file mkdir $out
    set ::NB 2
    foreach amp {8192 4096 2048 1024 512 256 128 64 32} {
        for {set i 0} {$i < 32} {incr i} {
            set ph [expr {int($i * 4294967296 / 32 + 12345678) & 0xFFFFFFFF}]
            run_exp S3_a${amp}_p$i 0 0 $amp 0 $F1 $F1 $ph 99 8 0 $out
        }
    }
}
if {"S4" in $sections} {
    # S4: steady-state accuracy vs noise for WEAK signals (true |I+jQ| = amp/2).  every=64
    set out $base/S4; file mkdir $out; set ::NB 32
    foreach amp {1024 256} {
        foreach sg {100 300 1000 3000 8000} {
            foreach k {4 6 8 10 12} {
                run_exp S4_a${amp}_fix${k}_s$sg $::LOGEN $k $amp $sg $F1 $F1 0 777 64 0 $out
            }
            run_exp S4_a${amp}_adapt_s$sg [expr {$::ADAPT|$::LOGEN}] 0 $amp $sg $F1 $F1 0 777 64 0 $out
        }
    }
}
if {"S5" in $sections} {
    # S5: step responses with a weak signal (amp 1024 / 128), where the adaptive controller has work to do
    set out $base/S5; file mkdir $out
    foreach {tag kf ev} {fix4 4 8  fix8 8 16  fix12 12 64  adapt 0 32} {
        set fl [expr {$kf == 0 ? ($::ADAPT) : 0}]
        run_step S5_noiseup_$tag $fl $kf 1024 100 $ev 200000 sigma 3000 $out
        run_step S5_noisedn_$tag $fl $kf 1024 3000 $ev 200000 sigma 100 $out
        run_step S5_ampdown_$tag $fl $kf 1024 300 $ev 200000 amp 128 $out
        run_step S5_ampup_$tag   $fl $kf 128 300 $ev 200000 amp 1024 $out
    }
}
puts "SWEEP DONE: $base"
exit
