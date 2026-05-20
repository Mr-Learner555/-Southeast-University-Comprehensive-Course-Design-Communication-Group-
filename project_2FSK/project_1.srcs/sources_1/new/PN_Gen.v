module PN_Gen
(
	input clk,
	output reg pn=0
);

reg[4:0] PN_buf = 5'd1;  
wire rst;

always@(posedge clk) begin
//    if(rst) begin
//        PN_buf <= 5'd1;
//        pn <= 0;
//    end

        PN_buf <= {PN_buf[3:0],PN_buf[4]+PN_buf[1]};
        pn <= PN_buf[4];
end

//assign rst = !(|PN_buf);  

endmodule 