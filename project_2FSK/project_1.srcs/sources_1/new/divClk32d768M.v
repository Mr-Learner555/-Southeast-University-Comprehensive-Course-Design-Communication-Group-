`timescale 1ns / 1ps

module askmod(
    clkHi,
	clkd,
	din,
	dout
    );
	
	input	 clkHi;   				
	input	 clkd;   				
	input	 din;        //
	
	output signed [11:0]	dout; //ASK
	
	
	//
	
	wire signed [15:0]sine ;
	
	
	dds_compiler_0 ask_carr (//²úÉú2.048MHzÔØ²¨
	.aclk(clkHi),                              // input wire aclk
	.m_axis_data_tvalid( ),  // output wire m_axis_data_tvalid
	.m_axis_data_tdata(sine)    // output wire [15 : 0] m_axis_data_tdata
	);
	

	
	reg [11:0] ask;
	
	always @(posedge clkHi)
		case(din)
			2'd0:
			   ask  <= 12'd0;
			2'd1:
			   ask <= sine[11:0];
		endcase
		
	assign dout = ask;
	
endmodule
