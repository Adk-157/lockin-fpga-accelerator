# Vivado 2023.1 batch:  vivado -mode batch -source build_top_ps.tcl     (run from lockin_top_pkg)
# Same lock-in design as build_top.tcl, plus the Zynq UltraScale+ processing system (Cortex-A53) as a
# second AXI master, so the ARM cores (PYNQ / Linux) can control the IP.  PL clock still comes from the
# 125 MHz board oscillator via clk_wiz, so the JTAG-AXI path keeps working even if the PS is not booted.
# Both masters see the IP at 0xA0000000.
set here [pwd]
set prj  lockin_ps
set pdir $here/vivado_ps
file delete -force $pdir
file delete -force $here/ip_repo
file mkdir $here/ip_repo
exec tar -xf $here/lockin_top_ip.zip -C $here/ip_repo

create_project $prj $pdir -part xczu5eg-sfvc784-1-e
set_property ip_repo_paths $here/ip_repo [current_project]
update_ip_catalog -rebuild

set xdc $pdir/clk.xdc
set f [open $xdc w]
puts $f {set_property PACKAGE_PIN K4 [get_ports clk_125mhz_clk_p]}
puts $f {set_property PACKAGE_PIN K3 [get_ports clk_125mhz_clk_n]}
puts $f {set_property IOSTANDARD LVDS [get_ports clk_125mhz_clk_p]}
puts $f {set_property IOSTANDARD LVDS [get_ports clk_125mhz_clk_n]}
close $f
add_files -fileset constrs_1 $xdc

create_bd_design design_1

# ---- clock and reset (unchanged) ----
set clk [create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0]
set_property -dict [list CONFIG.PRIM_SOURCE Differential_clock_capable_pin CONFIG.PRIM_IN_FREQ 125.000 \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ 100.000 CONFIG.USE_RESET false] $clk
set dp [create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 clk_125mhz]
set_property CONFIG.FREQ_HZ 125000000 $dp
connect_bd_intf_net $dp [get_bd_intf_pins clk_wiz_0/CLK_IN1_D]
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 one

# ---- processing system: only the master port HPM0_FPD towards the PL is used ----
# pick the newest zynq_ultra_ps_e version that this part/Vivado accepts (3.5 on 2023.1 for xczu5eg)
set ps ""
foreach v {3.5 3.4 3.3} {
    if {![catch {create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:$v zynq_ps} err]} { puts "PS IP version $v"; set ps [get_bd_cells zynq_ps]; break }
}
if {$ps eq ""} { error "no supported zynq_ultra_ps_e version found" }
set_property -dict [list \
    CONFIG.PSU__USE__M_AXI_GP0 1 \
    CONFIG.PSU__USE__M_AXI_GP1 0 \
    CONFIG.PSU__USE__M_AXI_GP2 0 \
    CONFIG.PSU__FPGA_PL0_ENABLE 0 ] $ps

create_bd_cell -type ip -vlnv xilinx.com:ip:jtag_axi:1.2 jtag_axi_0
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic
set_property -dict [list CONFIG.NUM_SI 2 CONFIG.NUM_MI 1] [get_bd_cells axi_ic]
create_bd_cell -type ip -vlnv xilinx.com:hls:lockin_top:1.0 lockin_top_0

set c [get_bd_pins clk_wiz_0/clk_out1]
connect_bd_net $c [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins jtag_axi_0/aclk] \
    [get_bd_pins axi_ic/ACLK] [get_bd_pins axi_ic/S00_ACLK] [get_bd_pins axi_ic/S01_ACLK] \
    [get_bd_pins axi_ic/M00_ACLK] [get_bd_pins lockin_top_0/ap_clk] [get_bd_pins zynq_ps/maxihpm0_fpd_aclk]
connect_bd_net [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_0/dcm_locked]
connect_bd_net [get_bd_pins one/dout] [get_bd_pins proc_sys_reset_0/ext_reset_in]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins jtag_axi_0/aresetn] \
    [get_bd_pins axi_ic/ARESETN] [get_bd_pins axi_ic/S00_ARESETN] [get_bd_pins axi_ic/S01_ARESETN] \
    [get_bd_pins axi_ic/M00_ARESETN] [get_bd_pins lockin_top_0/ap_rst_n]
connect_bd_intf_net [get_bd_intf_pins jtag_axi_0/M_AXI] [get_bd_intf_pins axi_ic/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins zynq_ps/M_AXI_HPM0_FPD] [get_bd_intf_pins axi_ic/S01_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_ic/M00_AXI] [get_bd_intf_pins lockin_top_0/s_axi_ctl]

assign_bd_address -offset 0xA0000000 -range 64K -target_address_space [get_bd_addr_spaces jtag_axi_0/Data] \
    [get_bd_addr_segs lockin_top_0/s_axi_ctl/Reg]
assign_bd_address -offset 0xA0000000 -range 64K -target_address_space [get_bd_addr_spaces zynq_ps/Data] \
    [get_bd_addr_segs lockin_top_0/s_axi_ctl/Reg]
validate_bd_design
save_bd_design

make_wrapper -files [get_files $pdir/$prj.srcs/sources_1/bd/design_1/design_1.bd] -top
add_files -norecurse $pdir/$prj.gen/sources_1/bd/design_1/hdl/design_1_wrapper.v
set_property top design_1_wrapper [current_fileset]
update_compile_order -fileset sources_1

launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
open_run impl_1
report_timing_summary -file $here/timing_summary_ps.rpt
report_utilization    -file $here/utilization_ps.rpt
report_utilization -hierarchical -hierarchical_depth 6 -file $here/utilization_hier_ps.rpt
report_power -file $here/power_ps.rpt
file copy -force $pdir/$prj.runs/impl_1/design_1_wrapper.bit $here/lockin_ps.bit
set hwh [glob -nocomplain $pdir/$prj.gen/sources_1/bd/design_1/hw_handoff/design_1.hwh $pdir/$prj.srcs/sources_1/bd/design_1/hw_handoff/design_1.hwh]
if {[llength $hwh]} { file copy -force [lindex $hwh 0] $here/lockin_ps.hwh } else { puts "WARNING: hwh not found, search $pdir for design_1.hwh" }
puts "BUILD DONE: $here/lockin_ps.bit and lockin_ps.hwh"
exit
