`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/23 15:08:01
// Design Name: 
// Module Name: fskdemod
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


module fskdemod(
    input  clkHi,//系统时钟     
    input  clkd,//采样时钟
    input  rst_n,//复位信号
    input signed [11:0] fsk_in,//输入的fsk已调信号
    output wire pn_bit_out,//解调得到的基带信号
    output wire signed [11:0] f1_out,
    output wire signed [11:0] f2_out,
    output wire signed [13:0] f1_lpf,
    output wire signed[13:0] f2_lpf
    );
    
//fsk非相干解调
//1.使用2个带通滤波器进行滤波
wire signed[15:0] f1_out_raw;
wire signed [15:0] f2_out_raw;
assign f1_out=f1_out_raw[11:0];
assign f2_out=f2_out_raw[11:0];
fir_compiler_1 fir_f1_test (
  .aclk(clkd),                              // input wire aclk
  .s_axis_data_tvalid(1'b1),  // input wire s_axis_data_tvalid
  .s_axis_data_tready(),  // output wire s_axis_data_tready
  .s_axis_data_tdata(fsk_in),    // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(f1_out_raw)    // output wire [15 : 0] m_axis_data_tdata
);
fir_compiler_2 fir_f2_test (
  .aclk(clkd),                              // input wire aclk
  .s_axis_data_tvalid(1'b1),  // input wire s_axis_data_tvalid
  .s_axis_data_tready(),  // output wire s_axis_data_tready
  .s_axis_data_tdata(fsk_in),    // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(f2_out_raw)    // output wire [15 : 0] m_axis_data_tdata
);
//2.对fsk进行整流处理
wire[11:0] abs_fsk_f1;
assign abs_fsk_f1=(f1_out[11]==1)?(~f1_out+1'b1):f1_out;
wire[11:0] abs_fsk_f2;
assign abs_fsk_f2=(f2_out[11]==1)?(~f2_out+1'b1):f2_out;

//3.低通滤波
wire signed [15:0] f1_lpf_raw;
wire signed[15:0] f2_lpf_raw;
assign f1_lpf=f1_lpf_raw[13:0];
assign f2_lpf=f2_lpf_raw[13:0];
fir_compiler_3 fir_f1_lpf (
  .aclk(clkd),                              // input wire aclk
  .s_axis_data_tvalid(1'b1),  // input wire s_axis_data_tvalid
  .s_axis_data_tready(),  // output wire s_axis_data_tready
  .s_axis_data_tdata(abs_fsk_f1),    // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(f1_lpf_raw)    // output wire [15 : 0] m_axis_data_tdata
);
fir_compiler_3 fir_f2_lpf (
  .aclk(clkd),                              // input wire aclk
  .s_axis_data_tvalid(1'b1),  // input wire s_axis_data_tvalid
  .s_axis_data_tready(),  // output wire s_axis_data_tready
  .s_axis_data_tdata(abs_fsk_f2),    // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(f2_lpf_raw)    // output wire [15 : 0] m_axis_data_tdata
);

//4.计算门限
reg signed [21:0] sum256=22'sd0;
reg [7:0] cnt256=8'd0;
reg signed [13:0] gate_reg=14'sd0;
always @(posedge clkd or negedge rst_n) begin
    if (~rst_n) begin
        sum256 <= 22'sd0;//sd: signed decimal
        cnt256 <= 8'd0;
        gate_reg <= 14'sd0;
    end else begin
        if (cnt256 < 8'd255) begin
            // 累加 256 个样本
            sum256 <= sum256 + {{8{f1_lpf[13]}}, f1_lpf}; // 符号扩展
            cnt256 <= cnt256 + 1'b1;
        end else begin
            // 已累加满 256 -> 输出平均并开始下一个窗口
            gate_reg <= sum256 >>> 8;    // 算术右移相当于除 256（保持符号）
            sum256 <= {{8{f1_lpf[13]}}, f1_lpf}; // 新一轮从当前样本开始累加
            cnt256 <= 8'd1; // 因为已把当前样本计入 sum256
        end
    end
end
//5.判决输出
assign pn_bit_out=(f1_lpf>gate_reg)? 1'b0: 1'b1;

endmodule
