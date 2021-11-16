module Muxparam #(
	parameter SEL = 2,
	parameter type in = Muxparam_pkg::bus_in,
	parameter type out = Muxparam_pkg::bus_out
	)(
	input logic [SEL-1:0] selec,
	input in  indata,
	output out  outdata);

assign outdata = indata[selec];

endmodule