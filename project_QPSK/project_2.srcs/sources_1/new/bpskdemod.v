`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/26 14:43:22
// Design Name: 
// Module Name: bpskdemod
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

module bpskdemod(
    input wire clkHi,//系统时钟32.768MHz
    input wire clkd,//采样时钟8.192MHz
    input wire signed[11:0] bpskdata,//bpsk输入的调制信号
    output wire pn_bit_out//bpsk解调得到的基带信号
);
//bpsk采用相干解调,采用costas环进行载波同步
//
endmodule
