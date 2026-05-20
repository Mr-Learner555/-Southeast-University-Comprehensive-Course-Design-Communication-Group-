`timescale 1ns / 1ps

module fskmod(
    input         clkHi,   		 // 载波时钟（与原ASK一致，比如32.768M）
	input         clkd,   		 // 保留原信号（若无用可删除）
	input         din,       	 // 输入PN码（0/1）
	output signed [11:0]	dout  // FSK调制输出
);

wire signed [15:0] sine_f0; // 对应"0"的载波（1.024MHz）
wire signed [15:0] sine_f1; // 对应"1"的载波（2.048MHz）

// DDS1：生成载波f1
dds_compiler_0 fsk_carr1 (
	.aclk(clkHi),                             
	.m_axis_data_tvalid( ),  
	.m_axis_data_tdata(sine_f1)    
);

// DDS2：生成载波f0（1.024MHz载波）
dds_compiler_1 fsk_carr0 (
	.aclk(clkHi),                         
	.m_axis_data_tvalid( ),  
	.m_axis_data_tdata(sine_f0)  
);

reg signed [11:0] fsk_out;
always @(posedge clkHi) begin
    case(din)
        1'b0: fsk_out <= sine_f0[11:0];  // 码元0 → 输出f0载波
        1'b1: fsk_out <= sine_f1[11:0];  // 码元1 → 输出f1载波
    endcase
end

assign dout = fsk_out;

endmodule