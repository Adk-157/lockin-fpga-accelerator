sed -i 's/^set ::BASE 0x40000000/if {![info exists ::BASE]} { set ::BASE 0x40000000 }/' lockin_hw.tcl
