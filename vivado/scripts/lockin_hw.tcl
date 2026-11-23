# Helper procs for the lockin_top block over JTAG-to-AXI.  source this file after connecting.
set ::BASE 0x40000000
set ::NB 32   ;# number of 256-word bursts to read from the log (32 = whole log)
set ::txn 0
proc axi {} { return [lindex [get_hw_axis] 0] }
proc wr {off val} {
    set n w[incr ::txn]
    create_hw_axi_txn -force $n [axi] -type write -address [format %08x [expr {$::BASE + $off}]] \
        -data [format %08x [expr {$val & 0xFFFFFFFF}]] -len 1 -size 32
    run_hw_axi -quiet $n
    delete_hw_axi_txn $n
}
proc rd {off} {
    set n r[incr ::txn]
    create_hw_axi_txn -force $n [axi] -type read -address [format %08x [expr {$::BASE + $off}]] -len 1 -size 32
    run_hw_axi -quiet $n
    set d [get_property DATA [get_hw_axi_txns $n]]
    delete_hw_axi_txn $n
    return [expr {"0x$d"}]
}
proc rd_burst {off len} {
    set n b[incr ::txn]
    create_hw_axi_txn -force $n [axi] -type read -address [format %08x [expr {$::BASE + $off}]] \
        -len $len -size 32 -burst INCR
    run_hw_axi -quiet $n
    set d [get_property DATA [get_hw_axi_txns $n]]
    delete_hw_axi_txn $n
    return $d
}
# register offsets
set ::R(ctrl) 0x00; set ::R(ctl) 0x10; set ::R(kfix) 0x18; set ::R(ph_ref) 0x20; set ::R(ph_sig) 0x28
set ::R(ph_off) 0x30; set ::R(amp) 0x38; set ::R(sigma) 0x40; set ::R(seed) 0x48; set ::R(every) 0x50
set ::R(xext) 0x58; set ::R(out_count) 0x60; set ::R(log_n) 0x70; set ::R(status) 0x80; set ::R(k_now) 0x90
set ::R(mI) 0xA0; set ::R(mQ) 0xB0; set ::R(mag) 0xC0
# ctl bits
set ::RST 0x01; set ::ADAPT 0x02; set ::LOGEN 0x04; set ::EXT 0x08; set ::LOGCLR 0x10

proc hw_open {bit} {
    open_hw_manager
    connect_hw_server -allow_non_jtag
    open_hw_target
    set dev [lindex [get_hw_devices xczu5*] 0]
    current_hw_device $dev
    set_property PROGRAM.FILE $bit $dev
    program_hw_devices $dev
    refresh_hw_device -update_hw_probes false $dev
    after 1000
    puts "HW axi: [get_hw_axis]"
}
proc start_kernel {} {
    wr $::R(ctrl) 0x81          ;# ap_start + auto_restart
    puts "ap_ctrl = [format 0x%08x [rd $::R(ctrl)]]"
}
proc signed16 {v} { set v [expr {$v & 0xFFFF}]; if {$v >= 32768} {incr v -65536}; return $v }

# one logged run: reset, configure, log until the log is full (or timeout), dump everything to a text file
proc run_exp {name flags kfix amp sigma ph_ref ph_sig ph_off seed every xext outdir {maxwait 120}} {
    wr $::R(kfix) $kfix; wr $::R(amp) [expr {$amp & 0xFFFF}]; wr $::R(sigma) $sigma
    wr $::R(ph_ref) $ph_ref; wr $::R(ph_sig) $ph_sig; wr $::R(ph_off) $ph_off
    wr $::R(seed) $seed; wr $::R(every) $every; wr $::R(xext) [expr {$xext & 0xFFFF}]
    wr $::R(ctl) [expr {$flags | $::RST | $::LOGCLR | $::LOGEN}]
    after 20
    wr $::R(ctl) [expr {$flags | $::LOGEN}]
    set t0 [clock milliseconds]; set full 0
    while {[expr {[clock milliseconds] - $t0}] < $maxwait*1000} {
        if {[rd $::R(status)] & 1} { set full 1; break }
        after 100
    }
    wr $::R(ctl) [expr {$flags}]         ;# stop logging
    set fh [open "$outdir/$name.txt" w]
    puts $fh "# name=$name flags=$flags kfix=$kfix amp=$amp sigma=$sigma ph_ref=$ph_ref ph_sig=$ph_sig ph_off=$ph_off seed=$seed every=$every xext=$xext"
    puts $fh "# full=$full out_count=[rd $::R(out_count)] log_n=[rd $::R(log_n)] status=[rd $::R(status)] k_now=[rd $::R(k_now)] mI=[rd $::R(mI)] mQ=[rd $::R(mQ)] mag=[rd $::R(mag)]"
    set nb $::NB
    for {set b 0} {$b < $nb} {incr b} {
        puts $fh "B $b [rd_burst [expr {0x8000 + $b*1024}] 256]"
    }
    close $fh
    puts "$name: full=$full out_count=[rd $::R(out_count)] log_n=[rd $::R(log_n)]"
}
# throughput: processed samples per second (128 samples per decimated output)
proc throughput {secs} {
    wr $::R(ctl) $::ADAPT           ;# running, no logging
    after 200
    set c0 [rd $::R(out_count)]; set t0 [clock milliseconds]
    after [expr {$secs*1000}]
    set c1 [rd $::R(out_count)]; set t1 [clock milliseconds]
    set dc [expr {($c1 - $c0) & 0xFFFFFFFF}]
    set rate [expr {$dc*128.0/(($t1-$t0)/1000.0)}]
    puts [format "THROUGHPUT: %d outputs in %.3f s -> %.3f Msample/s (nominal 0.2)" $dc [expr {($t1-$t0)/1000.0}] [expr {$rate/1e6}]]
    return $rate
}

# step response: run with base values, then change ONE register (amp or sigma) mid-run while logging
proc run_step {name flags kfix amp sigma every warm chreg chval outdir} {
    wr $::R(kfix) $kfix; wr $::R(amp) [expr {$amp & 0xFFFF}]; wr $::R(sigma) $sigma
    wr $::R(ph_ref) 21474836; wr $::R(ph_sig) 21474836; wr $::R(ph_off) 0
    wr $::R(seed) 555; wr $::R(every) $every; wr $::R(xext) 0
    wr $::R(ctl) [expr {$flags | $::RST | $::LOGCLR}]
    after 20
    wr $::R(ctl) $flags
    while {[rd $::R(out_count)] < $warm} { after 50 }
    wr $::R(ctl) [expr {$flags | $::LOGCLR | $::LOGEN}]
    wr $::R(ctl) [expr {$flags | $::LOGEN}]
    set c_start [rd $::R(out_count)]
    wr $::R($chreg) [expr {$chval & 0xFFFF}]
    set c_step [rd $::R(out_count)]
    set t0 [clock milliseconds]; set full 0
    while {[expr {[clock milliseconds] - $t0}] < 120000} {
        if {[rd $::R(status)] & 1} { set full 1; break }
        after 100
    }
    wr $::R(ctl) $flags
    set fh [open "$outdir/$name.txt" w]
    puts $fh "# name=$name flags=$flags kfix=$kfix amp=$amp sigma=$sigma every=$every warm=$warm chreg=$chreg chval=$chval"
    puts $fh "# full=$full out_count_at_log_start=$c_start out_count_after_step_write=$c_step out_count=[rd $::R(out_count)] log_n=[rd $::R(log_n)]"
    for {set b 0} {$b < 32} {incr b} { puts $fh "B $b [rd_burst [expr {0x8000 + $b*1024}] 256]" }
    close $fh
    puts "$name: full=$full log_start_count=$c_start step_count=$c_step"
}
