// Coder:      Abisai Ramirez P
//Description: This module defines a flip-flop based on a macro.
//Date:        16 Nov 2021

module Sev_tb (
// clock
input bit      cclk,
// reset
input bit      rst_n,
// Enable
input bit    enb,
// Data to store
input bit   d,
// Stored data
output logic  [3:0] q1,
output logic  [3:0] q2,
output logic  [3:0] q3,
output logic  [3:0] q4
);

`include "Sev.def"

`Severity(cclk, "info", rst_n, enb, q1);
`Severity(cclk, "warning", rst_n, enb, q2);
`Severity(cclk, "fatal", rst_n, enb, q3);
`Severity(cclk, "error", rst_n, enb, q4);

initial begin
	enb = 1'b1;
	repeat (100) begin
	#35
	$display("valor de salida %d", q1);
	$display("valor de salida %d", q2);
	$display("valor de salida %d", q3);
	$display("valor de salida %d", q4);
	d = 1;
	#45
	$display("valor de salida %d", q1);
	$display("valor de salida %d", q2);
	$display("valor de salida %d", q3);	
	$display("valor de salida %d", q4);
	d = 0;
	end
end
initial begin
	cclk = 0;
	forever #10 cclk = ~cclk;
end
	

endmodule
