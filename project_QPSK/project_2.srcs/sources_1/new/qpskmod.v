`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/23 21:22:54
// Design Name: 
// Module Name: qpskmod
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module qpskmod(
    input wire clkHi,// 系统时钟：32MHz
    input wire clkd,// 采样时钟：8MHz
    input wire rst_n,//复位信号
    input wire[61:0] para_in,// 并行输入的62位pn序列
    output wire signed [14:0] qpsk// 输出QPSK调制信号
);
wire ser_data;
wire[1:0] I;
wire[1:0] Q;
//wire[23:0] I_filtered;
//wire[23:0] Q_filtered;
wire[11:0] carry_sin;
wire[11:0] carry_cos;
wire[15:0] carry_sin_raw;
wire[15:0] carry_cos_raw;
assign carry_sin=carry_sin_raw[11:0];
assign carry_cos=carry_cos_raw[11:0];
wire[13:0] qpsk_i;
wire[13:0] qpsk_q;
wire signed[14:0] qpsk_raw;

//串并转换，串行输出不对，pn序列给的并行数据有问题
p2s 
#(.DIV(8'd128))
p2s_inst
(
    .clkHi(clkHi),
    .rst_n(rst_n),
    .para_i(para_in),
    .ser_o(ser_data)
);

//I路Q路分流
iq_div
#(  .IQ_DIV_MAX(8'd4), //采样速率为clk/IQ_DIV_MAX
    .BIT_SAMPLE(8'd32)  //每个bit采样点数
)
iq_div_inst
(
    .clk        (clkHi),
    .rst_n      (rst_n),
    .ser_i      (ser_data),
    .I          (I      ), //有符号双极性输出
    .Q          (Q      )
);

////成型滤波，减少码间串扰
////I路
//fir_compiler_0 rcosfilter_I (
//  .aclk(clkd),                              // input wire aclk
//  .s_axis_data_tvalid(1'b1),  // input wire s_axis_data_tvalid
//  .s_axis_data_tready(),  // output wire s_axis_data_tready
//  .s_axis_data_tdata({{6{I[1]}},I}),    // input wire [7 : 0] s_axis_data_tdata
//  .m_axis_data_tvalid(),  // output wire m_axis_data_tvalid
//  .m_axis_data_tdata(I_filtered)    // output wire [23 : 0] m_axis_data_tdata
//);
////Q路
//fir_compiler_0 rcosfilter_Q (
//  .aclk(clkd),                              // input wire aclk
//  .s_axis_data_tvalid(1'b1),  // input wire s_axis_data_tvalid
//  .s_axis_data_tready(),  // output wire s_axis_data_tready
//  .s_axis_data_tdata({{6{Q[1]}},Q}),    // input wire [7 : 0] s_axis_data_tdata
//  .m_axis_data_tvalid(),  // output wire m_axis_data_tvalid
//  .m_axis_data_tdata(Q_filtered)    // output wire [23 : 0] m_axis_data_tdata
//);
//调制段载波产生
//这里的dds到底该咋设置，为什么我的
//cos波形
dds_cos dds_mod_cos(
  .aclk(clkd),                                // input wire aclk
  .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
  .m_axis_data_tdata(carry_cos_raw),      // output wire [7 : 0] m_axis_data_tdata
  .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
  .m_axis_phase_tdata()    // output wire [31 : 0] m_axis_phase_tdata
);
//sin波形
dds_sin dds_mod_sin(
  .aclk(clkd),                                // input wire aclk
  .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
  .m_axis_data_tdata(carry_sin_raw),      // output wire [7 : 0] m_axis_data_tdata
  .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
  .m_axis_phase_tdata()    // output wire [31 : 0] m_axis_phase_tdata
);
//滤波后结果与载波相乘
//I路
//mul_mod mod_mul_I (
//  .CLK(clkd),  // input wire CLK
//  .A(I_filtered),      // input wire [23 : 0] A
//  .B(carry_cos),      // input wire [7 : 0] B
//  .P(qpsk_i)      // output wire [31 : 0] P
//);
mul_mod mod_mul_I (
  .CLK(clkd),  // input wire CLK
  .A(I),      // input wire [1 : 0] A
  .B(carry_cos),      // input wire [11 : 0] B
  .P(qpsk_i)      // output wire [13 : 0] P
);
//Q路
//mul_mod mod_mul_Q (
//  .CLK(clkd),  // input wire CLK
//  .A(Q_filtered),      // input wire [23 : 0] A
//  .B(carry_sin),      // input wire [7 : 0] B
//  .P(qpsk_q)      // output wire [31 : 0] P
//);
mul_mod mod_mul_Q (
  .CLK(clkd),  // input wire CLK
  .A(Q),      // input wire [1 : 0] A
  .B(carry_sin),      // input wire [11 : 0] B
  .P(qpsk_q)      // output wire [13 : 0] P
);
//最终调制结果
assign qpsk_raw={qpsk_i[13],qpsk_i}+{qpsk_q[13],qpsk_q};
assign qpsk=qpsk_raw;
endmodule
