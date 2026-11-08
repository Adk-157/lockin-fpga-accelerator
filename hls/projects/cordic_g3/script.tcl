############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project cordic_g3
set_top cordic_vectoring
add_files ../files/cordic_hls.cpp -cflags "-DCORDIC_GUARD=3"
add_files ../files/cordic_hls.h -cflags "-DCORDIC_GUARD=3"
add_files ../files/lockin_golden_params.h -cflags "-DCORDIC_GUARD=3"
add_files -tb ../files/tb_cordic.cpp -cflags "-DCORDIC_GUARD=3"
open_solution "solution1" -flow_target vivado
set_part {xczu5eg-sfvc784-1-e}
create_clock -period 10ns -name default
config_cosim -argv C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/cordic_g3_full.csv -tool xsim
config_export -flow syn -format ip_catalog -output C:/hls_out/cordic_g3.zip -rtl verilog -vivado_clock 10ns
#source "./cordic_g3/solution1/directives.tcl"
csim_design -argv {C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/cordic_g3_full.csv}
csynth_design
cosim_design -argv {C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/cordic_g3_full.csv}
export_design -flow impl -rtl verilog -format ip_catalog -output C:/hls_out/cordic_g3.zip
