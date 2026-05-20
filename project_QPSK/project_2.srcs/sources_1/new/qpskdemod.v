`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/26 20:16:50
// Design Name: 
// Module Name: qpskdemod
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
module qpskdemod(
    input wire clkHi,
    input wire clkd,
    input wire rst_n,
    input wire[14:0] qpsk,
    output wire demod_ser,
    output wire clk_syn,
    output reg demod_ser_syn
);
wire[15:0] demod_carry_sin_raw;
wire[15:0] demod_carry_cos_raw;
wire[11:0] demod_carry_sin;
wire[11:0] demod_carry_cos;
wire[11:0] demod_sin;
wire[11:0] demod_cos;
assign demod_carry_sin=demod_carry_sin_raw[11:0];
assign demod_carry_cos=demod_carry_cos_raw[11:0];
wire[26:0] demod_I;
wire[26:0] demod_Q;
wire signed[1:0] jud_I;
wire signed[1:0] jud_Q;

wire signed[26:0] filtered_I;
wire signed[26:0] filtered_Q;

wire sync_I;
wire sync_Q;
wire sync_flag;
wire sync_flag_d1;
wire [26:0] phase_error;
wire [23:0] pd;//costas环路滤波器输出
wire[23:0] freq;

wire clk_d1,clk_d2;
wire clk_i,clk_q,pd_bef,pd_aft,pd_before,pd_after;
assign clk_syn=clk_i;
assign freq=24'h100800-pd;//24h'400199对应1.0241MHz，发射端为1.024MHz，频偏100Hz。更新：切换为12位正弦波后，100400对应1.025
//1.025MHz 100400 可以
//1.023MHz FFBFF 可以
//1.034MHz 102800 不可以
//1.026 100800 可以
//1.028 101000 不可以

//解调端载波生成，频率控制字40A000，频率为1.034MHz
//频率控制字401000，频率为1.025MHz

dds_demod_cos inst_dds_demod_cos (
  .aclk(clkd),                                // input wire aclk
  .s_axis_phase_tvalid(1'b1),  // input wire s_axis_phase_tvalid
  .s_axis_phase_tdata(freq),    // input wire [23 : 0] s_axis_phase_tdata
  .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
  .m_axis_data_tdata(demod_carry_cos_raw),      // output wire [15 : 0] m_axis_data_tdata
  .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
  .m_axis_phase_tdata()    // output wire [23 : 0] m_axis_phase_tdata
);

dds_demod_sin inst_dds_demod_sin (
  .aclk(clkd),                                // input wire aclk
  .s_axis_phase_tvalid(1'b1),  // input wire s_axis_phase_tvalid
  .s_axis_phase_tdata(freq),    // input wire [23 : 0] s_axis_phase_tdata
  .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
  .m_axis_data_tdata(demod_carry_sin_raw),      // output wire [15 : 0] m_axis_data_tdata
  .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
  .m_axis_phase_tdata()    // output wire [23 : 0] m_axis_phase_tdata
);


delay #(.delay_cnt(1)) inst_delay_cos
(
    .clk(clkd),
    .data_in(demod_carry_cos),
    .data_out(demod_cos)
);
delay #(.delay_cnt(1)) inst_delay_sin
(
    .clk(clkd),
    .data_in(demod_carry_sin),
    .data_out(demod_sin)
);

mult_demod mult_demod_I (
  .CLK(clkd),  // input wire CLK
  .A(qpsk),      // input wire [14 : 0] A
  .B(demod_cos),      // input wire [11 : 0] B
  .P(demod_I)      // output wire [26 : 0] P
);

mult_demod mult_demod_Q (
  .CLK(clkd),  // input wire CLK
  .A(qpsk),      // input wire [14 : 0] A
  .B(demod_sin),      // input wire [11 : 0] B
  .P(demod_Q)      // output wire [26 : 0] P
);
//I路经过低通滤波
demod_lpfilter3 lpfilter_I(
  .aclk(clkd),                              // input wire aclk
  .s_axis_data_tvalid(1'b1),  // input wire s_axis_data_tvalid
  .s_axis_data_tready(),  // output wire s_axis_data_tready
  .s_axis_data_tdata(demod_I),    // input wire [31 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(filtered_I)    // output wire [31 : 0] m_axis_data_tdata
);

//Q路经过低通滤波
demod_lpfilter3 lpfilter_Q (
  .aclk(clkd),                              // input wire aclk
  .s_axis_data_tvalid(1'b1),  // input wire s_axis_data_tvalid
  .s_axis_data_tready(),  // output wire s_axis_data_tready
  .s_axis_data_tdata(demod_Q),    // input wire [31 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(filtered_Q)    // output wire [47 : 0] m_axis_data_tdata
);

//载波同步：costas环
//鉴相器
phase_detector_new inst_phase_detector(
    .filtered_I(filtered_I),
    .filtered_Q(filtered_Q),
    .phase_error(phase_error)
);
//costas环路滤波器
costas_loop_filter_new inst_costas_loop_filter(
    .clk(clkd),
    .rst_n(rst_n),
    .phase_error(phase_error),
    .pd(pd)
);

//计算I路Q路的门限
//I路
wire signed[26:0] gate_I;
gate_cal gate_cal_I(
    .clkd(clkd),
    .rst_n(rst_n),
    .in(filtered_I),
    .gate(gate_I)
);
//Q路
wire signed[26:0] gate_Q;
gate_cal gate_cal_Q(
    .clkd(clkd),
    .rst_n(rst_n),
    .in(filtered_Q),
    .gate(gate_Q)
);

//判决I路Q路，将I路Q路转为离散值
//I路
assign jud_I=(filtered_I>gate_I)?1:-1;
//Q路
assign jud_Q=(filtered_Q>gate_Q)?1:-1;

//IQ合并
//合并IQ两路
iq_comb iq_comb_inst
(
    .clk(clkHi),
    .rst_n(rst_n),
    .I(jud_I),
    .Q(jud_Q),
    .ser(demod_ser)
);

//锁相环位同步

clk_gen inst_clk_gen(
.clk(clkHi), // 我们的pn序列是256k，所以时钟暂用6M
.rst_n(rst_n),
.clk_d1(clk_d1),
.clk_d2(clk_d2)
);
phasedetec inst_phasedetec(
.clk(clkHi),
.rst_n(rst_n),
.datain(demod_ser),
.clk_i(clk_i),
.clk_q(clk_q),
.pd_before(pd_bef),
.pd_after(pd_aft)
);
moniflop inst_moniflop1(
.clk(clkHi),
.rst_n(rst_n),
.din(pd_bef),
.dout(pd_before)
);
moniflop inst_moniflop2(
.clk(clkHi),
.rst_n(rst_n),
.din(pd_aft),
.dout(pd_after)
);
control inst_control(
.clk(clkHi),
.rst_n(rst_n),
.clk_d1(clk_d1),
.clk_d2(clk_d2),
.pd_before(pd_before),
.pd_after(pd_after),
.clk_i(clk_i),
.clk_q(clk_q)
);

always @(posedge clk_syn)
begin
    demod_ser_syn<=demod_ser;
end
endmodule
