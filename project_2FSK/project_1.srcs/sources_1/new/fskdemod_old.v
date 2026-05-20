`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/22 14:23:57
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


module fskdemod_old#(
    parameter CLK_FREQ    = 32_768_000,    
    parameter BAUD_RATE   = 256_000,      
    parameter FSK_F1      = 1_024_000,     
    parameter FSK_F2      = 2_048_000,     
    parameter INPUT_WIDTH = 12             
)
(
    input                   clkHi,            
    input                   clkd,
    input                   rst_n,         
    input [INPUT_WIDTH-1:0] fsk_in,         
    output reg              pn_bit_out, 
    output reg              pn_bit_valid   
    );
  
    localparam CNT_F1_MAX = CLK_FREQ / (2 * FSK_F1) - 1;  
    localparam CNT_F2_MAX = CLK_FREQ / (2 * FSK_F2) - 1; 
    
    reg [31:0] cnt_f1;  
    reg [31:0] cnt_f2;   
    reg        carrier_f1; 
    reg        carrier_f2;  
    

always @(posedge clkHi or negedge rst_n) begin
    if(!rst_n) begin
        cnt_f1 <= 32'd0;
        carrier_f1 <= 1'b0;
    end else begin
        if(cnt_f1 >= CNT_F1_MAX) begin
            cnt_f1 <= 32'd0;
            carrier_f1 <= ~carrier_f1; 
        end else begin
            cnt_f1 <= cnt_f1 + 32'd1;
            carrier_f1 <= carrier_f1;
        end
    end
end


always @(posedge clkHi or negedge rst_n) begin
    if(!rst_n) begin
        cnt_f2 <= 32'd0;
        carrier_f2 <= 1'b0;
    end else begin
        if(cnt_f2 >= CNT_F2_MAX) begin
            cnt_f2 <= 32'd0;
            carrier_f2 <= ~carrier_f2;
        end else begin
            cnt_f2 <= cnt_f2 + 32'd1;
            carrier_f2 <= carrier_f2;
        end
    end
end


reg [INPUT_WIDTH:0] mix_out1; 
reg [INPUT_WIDTH:0] mix_out2; 

always @(posedge clkHi or negedge rst_n) begin
    if(!rst_n) begin
        mix_out1 <= {INPUT_WIDTH+1{1'b0}};
        mix_out2 <= {INPUT_WIDTH+1{1'b0}};
    end else begin
        // mix_out1 <= {INPUT_WIDTH{1'b0}} | (fsk_in ^ carrier_f1);
        // mix_out2 <= {INPUT_WIDTH{1'b0}} | (fsk_in ^ carrier_f2);
        
        mix_out1 <= fsk_in * {{INPUT_WIDTH{1'b0}}, carrier_f1};
        mix_out2 <= fsk_in * {{INPUT_WIDTH{1'b0}}, carrier_f2};
    end
end




wire [15:0] lpf_out1_raw;
wire [15:0] lpf_out2_raw;
wire [11:0] lpf_out1;
wire [11:0] lpf_out2;
assign lpf_out1=lpf_out1_raw[11:0];
assign lpf_out2=lpf_out2_raw[11:0];
wire        lpf_tvalid;
fir_compiler_0 lpf1 (
  .aclk(clkHi),                              // input wire aclk
  .s_axis_data_tvalid(1'b1),  // input wire s_axis_data_tvalid
  .s_axis_data_tready(),  // output wire s_axis_data_tready
  .s_axis_data_tdata(mix_out1),    // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(lpf_tvalid),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(lpf_out1_raw)    // output wire [15 : 0] m_axis_data_tdata
);

fir_compiler_0 lpf2 (
  .aclk(clkd),                              // input wire aclk
  .s_axis_data_tvalid(1'b1),  // input wire s_axis_data_tvalid
  .s_axis_data_tready(),  // output wire s_axis_data_tready
  .s_axis_data_tdata(mix_out2),    // input wire [15 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(),  // output wire m_axis_data_tvalid
  .m_axis_data_tdata(lpf_out2_raw)    // output wire [15 : 0] m_axis_data_tdata
);


localparam BAUD_CNT_MAX = CLK_FREQ / BAUD_RATE - 1;
reg [31:0] baud_cnt;
reg        baud_sync;

always @(posedge clkHi or negedge rst_n) begin
    if(!rst_n) begin
        baud_cnt <= 32'd0;
        baud_sync <= 1'b0;
    end else begin
        baud_sync <= 1'b0;
        if(baud_cnt >= BAUD_CNT_MAX) begin
            baud_cnt <= 32'd0;
            baud_sync <= 1'b1;
        end else begin
            baud_cnt <= baud_cnt + 32'd1;
        end
    end
end


always @(posedge clkHi or negedge rst_n) begin
    if(!rst_n) begin
        pn_bit_out <= 1'b0;
        pn_bit_valid <= 1'b0;
    end else begin
        pn_bit_valid <= 1'b0;
        if(lpf_tvalid && baud_sync) begin
            pn_bit_valid <= 1'b1;
            pn_bit_out <= (lpf_out2 > lpf_out1) ? 1'b1 : 1'b0;
        end
    end
end

endmodule
