`timescale 1ns / 1ps
//时钟划分
module divClk32d768M
(
    input  clk32d768M,
    output clk16d384M,
    output clk8d192M,
    output clk4d096M,
    output clk2d048M,
    output clk1d024M,
    output clk512K,
    output clk256K,
    output clk128K,
    output clk64K,
    output clk32K,
    output clk16K,
    output clk8K,
    output clk4K,
    output clk2K,
    output clk1K
);

//32.768M时钟的倍数,[0]:16.384M
reg [14:0] clkCnt = 15'd0;
always@(posedge clk32d768M) begin
    clkCnt <= clkCnt + 15'd1;
end

assign clk16d384M = clkCnt[0];
assign clk8d192M  = clkCnt[1];
assign clk4d096M  = clkCnt[2];
assign clk2d048M  = clkCnt[3];
assign clk1d024M  = clkCnt[4];
assign clk512K    = clkCnt[5];
assign clk256K    = clkCnt[6];
assign clk128K    = clkCnt[7];
assign clk64K     = clkCnt[8];
assign clk32K     = clkCnt[9];
assign clk16K     = clkCnt[10];
assign clk8K      = clkCnt[11];
assign clk4K      = clkCnt[12];
assign clk2K      = clkCnt[13];
assign clk1K      = clkCnt[14];

endmodule
