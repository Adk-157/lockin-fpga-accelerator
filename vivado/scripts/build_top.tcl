# Vivado 2023.1 batch:  vivado -mode batch -source build_top.tcl   (run from lockin_top_pkg)
set here [pwd]
set prj  lockin_top_hw
set pdir $here/vivado_top
file delete -force $pdir
# unpack the exported HLS IP into a local repo
file delete -force $here/ip_repo
file mkdir $here/ip_repo
exec tar -xf $here/lockin_top_ip.zip -C $here/ip_repo

create_project $prj $pdir -part xczu5eg-sfvc784-1-e
set_property ip_repo_paths $here/ip_repo [current_project]
update_ip_catalog -rebuild

# constraints: 125 MHz differential clock (Si5340 ch.2) on K4/K3
set xdc $pdir/clk.xdc
set f [open $xdc w]
puts $f {set_property PACKAGE_PIN K4 [get_ports clk_125mhz_clk_p]}
puts $f {set_property PACKAGE_PIN K3 [get_ports clk_125mhz_clk_n]}
puts $f {set_property IOSTANDARD LVDS [get_ports clk_125mhz_clk_p]}
puts $f {set_property IOSTANDARD LVDS [get_ports clk_125mhz_clk_n]}
close $f
add_files -fileset constrs_1 $xdc

create_bd_design design_1

set clk [create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0]
set_property -dict [list CONFIG.PRIM_SOURCE Differential_clock_capable_pin CONFIG.PRIM_IN_FREQ 125.000 \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ 100.000 CONFIG.USE_RESET false] $clk
set dp [create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 clk_125mhz]
set_property CONFIG.FREQ_HZ 125000000 $dp
connect_bd_intf_net $dp [get_bd_intf_pins clk_wiz_0/CLK_IN1_D]

create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 one
create_bd_cell -type ip -vlnv xilinx.com:ip:jtag_axi:1.2 jtag_axi_0
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic
set_property CONFIG.NUM_MI 1 [get_bd_cells axi_ic]
create_bd_cell -type ip -vlnv xilinx.com:hls:lockin_top:1.0 lockin_top_0

connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] \
    [get_bd_pins jtag_axi_0/aclk] [get_bd_pins axi_ic/ACLK] [get_bd_pins axi_ic/S00_ACLK] \
    [get_bd_pins axi_ic/M00_ACLK] [get_bd_pins lockin_top_0/ap_clk]
connect_bd_net [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_0/dcm_locked]
connect_bd_net [get_bd_pins one/dout] [get_bd_pins proc_sys_reset_0/ext_reset_in]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins jtag_axi_0/aresetn] \
    [get_bd_pins axi_ic/ARESETN] [get_bd_pins axi_ic/S00_ARESETN] [get_bd_pins axi_ic/M00_ARESETN] \
    [get_bd_pins lockin_top_0/ap_rst_n]
connect_bd_intf_net [get_bd_intf_pins jtag_axi_0/M_AXI] [get_bd_intf_pins axi_ic/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_ic/M00_AXI] [get_bd_intf_pins lockin_top_0/s_axi_ctl]

assign_bd_address -offset 0x40000000 -range 64K -target_address_space [get_bd_addr_spaces jtag_axi_0/Data] \
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
report_timing_summary -file $here/timing_summary.rpt
report_utilization    -file $here/utilization.rpt
file copy -force $pdir/$prj.runs/impl_1/design_1_wrapper.bit $here/lockin_top.bit
puts "BUILD DONE: $here/lockin_top.bit"
exit
