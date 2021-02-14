############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project wave2
set_top s_compute_acoustics
add_files wave2/.apc/main.c
add_files wave2/.apc/acoustics.h
open_solution "wave"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./wave2/wave/directives.tcl"
#csim_design -compiler gcc
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
