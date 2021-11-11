localparam SEL = 2;
localparam WD = 2;

typedef logic [2**SEL-1:0][WD-1:0] bus_in;
typedef logic [WD-1:0] bus_out;

module Muxparam #(
	parameter SEL = 2,
	parameter type in = bus_in,
	parameter type out = bus_out)

	(input logic [SEL-1:0] selec,
	input in indata,
	output out outdata);

assign outdata = indata[selec];

endmodule