
`timescale 1ns/1ns

module mux2to1_tb;
	logic sel;
	logic a;
	logic b;
	logic out;
	integer i;
	
	mux2to1 dut(.I0(a), 
		.I1(b), 
		.Sel(sel), 
		.Data_out(out));
	
	

	always 
		begin
			#30 sel <= 1;
			$monitor("Sel es 1, toma el valor de B, sel = %d, b = %d, a = %d, out = %d ", sel, b, a, out);
			
			#30 sel <= 0;
			$monitor("Sel es 0, toma el valor de A, sel = %d, b = %d, a = %d, out = %d ", sel, b, a, out);
			//$display("Sel es 0, toma el valor de A");
		
		end

	initial begin
		a <= 0;
		b <= 0;
		out <= 0;
		
		for (i = 1; 1 < 10; i = 1+1) begin
			#10 a <= 1; b <= 0;
			#10 a <= 0; b <= 1;
		end
		
		#200 $finish;
	end
		
	
		
endmodule