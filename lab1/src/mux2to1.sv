module mux2to1
   #(parameter DW = 1)
   (input logic [DW-1:0] I0,I1,
    input logic Sel,
    output logic [DW-1:0] Data_out);
	 
//PARTE DECLARATORIA: Nets y variables
    wire [DW-1:0] I [2];
	 
//PARTE OPERATORIA
    assign I[0]=I0;
    assign I[1]=I1;
    assign Data_out =I[Sel];
endmodule