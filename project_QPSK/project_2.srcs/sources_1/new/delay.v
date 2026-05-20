`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/31 12:22:57
// Design Name: 
// Module Name: delay
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


module delay#(
    delay_cnt=1
)

(
    input wire[11:0] data_in,
    input wire clk,
    output reg[11:0] data_out
);
always @(posedge clk)
begin
    data_out<=data_in;
end

endmodule
