//`define POS
module FP_MC(q, d, clk, rst_n);
	output reg q;
	input d, clk, rst_n;
`ifdef POS
	always @(posedge clk, negedge rst_n) begin
		if (!rst_n) q <= 1'b0;  
`endif
`ifndef POS
	always @(posedge clk, posedge rst_n) begin 
		if (rst_n) q <= 1'b0; 
`endif
		//if (!rst_n) q <= 1'b0; 
   		else        q <= (d); 
		$display("%d", q); 
	end
endmodule


