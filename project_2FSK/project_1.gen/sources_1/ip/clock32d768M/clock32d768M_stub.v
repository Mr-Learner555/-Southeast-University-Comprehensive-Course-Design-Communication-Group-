// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Dec 19 10:46:35 2025
// Host        : Ferryman running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/course
//               design/final/project_1/project_1.gen/sources_1/ip/clock32d768M/clock32d768M_stub.v}
// Design      : clock32d768M
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clock32d768M(clock32d768M, clk_in_128M)
/* synthesis syn_black_box black_box_pad_pin="clk_in_128M" */
/* synthesis syn_force_seq_prim="clock32d768M" */;
  output clock32d768M /* synthesis syn_isclock = 1 */;
  input clk_in_128M;
endmodule
