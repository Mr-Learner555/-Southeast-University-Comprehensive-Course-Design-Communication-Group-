// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Dec 30 17:21:18 2025
// Host        : LAPTOP-VAJ3GCQ0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/Final
//               Homework/project_2/project_2.gen/sources_1/ip/mul_mod/mul_mod_stub.v}
// Design      : mul_mod
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_19,Vivado 2023.2" *)
module mul_mod(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="A[1:0],B[11:0],P[13:0]" */
/* synthesis syn_force_seq_prim="CLK" */;
  input CLK /* synthesis syn_isclock = 1 */;
  input [1:0]A;
  input [11:0]B;
  output [13:0]P;
endmodule
