`timescale 1ns/1ns
module Muxparam_tb;
	parameter sel = 4;
	logic [sel-1:0] selector;

	int i = 0;
	int a = 0;

	typedef enum logic [sel-1:0]{
				EXECUTE = 1, 
				FETCH, 
				jump, 
				write
				} my_enum;

	typedef struct {
			logic [7:0] addr;
			logic [3:0] data;
			enum {RD,WR} op;
			} my_struct;

	my_enum enums[2**sel-1:0];
	my_struct structs[2**sel-1:0];

	Muxparam_pkg::bus_out salida1;
	Muxparam_pkg::bus_out salida2;
	
	/*for (i=0: i<2**sel-1: i = i+1);
		for (a=0: a<2**sel-1: i = i+1);
			enums[0]*/

	Muxparam #(.SEL(sel)) dut1(.selec(selector), .indata(enums), .outdata(salida1));
	Muxparam #(.SEL(sel)) dut2(.selec(selector), .indata(structs), .outdata(salida2));
	

	initial begin
	repeat(10)
		begin
		selector = 2;
		#20; 
		$display("valor de salida %s", salida1);
		#20; selector = 4;
		$display("valor de salida %s", salida1);
		end

	end
		
	
		
endmodule