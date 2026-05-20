`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/27 22:25:00
// Design Name: 
// Module Name: qpskmod_tb
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


module qpskmod_tb();

reg rst_n=1'b0;
reg clk100M=1'b0;
wire clk32d768M, clk16d384M, clk8d192M, clk4d096M, clk2d048M, clk1d024M, clk512K, clk256K;
wire pn;//pn序列串行输出
wire[61:0] pn_para;//pn序列并行输出
wire[27:0] qpsk_data;//QPSK调制输出
always #5 clk100M <= ~clk100M;
reg clk32d768M_reg = 1'b0;
always #15.2588 clk32d768M_reg <= ~clk32d768M_reg;
assign clk32d768M = clk32d768M_reg;

initial begin
    rst_n=1'b0;
    # 2000;
    rst_n=1'b1;
    
end

//实例化各个模块

//时钟分频模块
divClk32d768M inst_divClk32d768M(
    .clk32d768M(clk32d768M),
    .clk16d384M(clk16d384M),
    .clk8d192M(clk8d192M),
    .clk4d096M(clk4d096M),
    .clk2d048M(clk2d048M),
    .clk1d024M(clk1d024M),
    .clk512K(clk512K),
    .clk256K(clk256K),
    .clk128K(),
    .clk64K(),
    .clk32K(),
    .clk16K(),
    .clk8K(),
    .clk4K(),
    .clk2K(),
    .clk1K()
);

// PN序列生成模块
PN_Gen inst_PN(
    .clk(clk256K),
    .pn(pn),
    .pn_para(pn_para)
);

//qpsk调制模块
qpskmod inst_qpskmod(
    .clkHi(clk32d768M),
    .clkd(clk8d192M),
    .rst_n(rst_n),
    .para_in(pn_para),
    .qpsk(qpsk_data)
);


endmodule
