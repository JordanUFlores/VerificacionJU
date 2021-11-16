module TB_FP_MC;
	logic q;
	logic d;
	logic clk;
	logic rst_n;

	FP_MC dut (q, d, clk, rst_n);
	
	initial begin
 		 clk=0;
     		forever #10 clk = ~clk;  
	end 
	initial begin 
		rst_n =0;
		forever #300 rst_n = ~rst_n;
	end
	initial begin
 		d=0;
     		forever #50 d = ~d;  
	end 

endmodule
	