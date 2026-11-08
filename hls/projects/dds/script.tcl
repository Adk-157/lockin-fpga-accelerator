############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project dds
set_top dds_sincos
add_files ../files/dds_hls.cpp
add_files ../files/dds_hls.h
add_files ../files/dds_params.h
add_files -tb ../files/tb_dds.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu5eg-sfvc784-1-e}
create_clock -period 10ns -name default
config_cosim -argv C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/dds_stream.csv -tool xsim
config_export -format ip_catalog -output C:/hls_out/dds.zip -rtl verilog -vivado_clock 10ns
#source "./dds/solution1/directives.tcl"
csim_design -argv {C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/dds_stream.csv}
csynth_design
cosim_design -argv {C:/Users/adith/OneDrive/Desktop/College/FPGA/golden_vectors/dds_stream.csv}
export_design -flow impl -rtl verilog -format ip_catalog -output C:/hls_out/dds.zip
