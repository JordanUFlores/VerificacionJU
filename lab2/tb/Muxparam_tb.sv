`timescale 1ns/1ns


module Muxparam_tb;
	logic sel;
	typedef enum logic [3:0] {EXECUTE, FETCH, jump, write} my_enum;
	my_enum enum1;
	typedef logic [3:0] bus_out;
	bus_out bus1;
	typedef struct {logic [7:0] addr;
		logic [3:0] data;
		enum {RD,WR} op;} my_struct;


	Muxparam dut( .selec(sel), 
		.outdata(bus1), 
		.indata(enum1));
	

	initial begin
	repeat(10)
		begin
		#20; sel <= 1;
		$display("valor de salida %s", bus1);
		#20; sel <= 0;
		end

	end
		
	
		
endmodule