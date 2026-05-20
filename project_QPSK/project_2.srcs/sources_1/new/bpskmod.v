`timescale 1ns / 1ps

module bpskmod(
    input wire clkHi,//系统时钟
    input wire clkd,//采样时钟
    
    input wire din,//输入pn序列
    output wire signed[11:0] dout//bpsk调制信号
);

wire signed[15:0] cos_raw;
wire signed[11:0] cos;
assign cos=cos_raw[11:0];

dds_compiler_0 clk_carrier (
  .aclk(clkHi),                                // input wire aclk
  .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
  .m_axis_data_tdata(cos_raw),      // output wire [15 : 0] m_axis_data_tdata
  .m_axis_phase_tvalid(),  // output wire m_axis_phase_tvalid
  .m_axis_phase_tdata()    // output wire [31 : 0] m_axis_phase_tdata
);
//pn输入为0，调制信号相位为0；pn输入为1，调制信号相位为pi
assign dout=(din==0)?cos:(~cos+1);



endmodule
