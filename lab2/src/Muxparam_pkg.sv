package Muxparam_pkg;
	localparam SEL = 4;

	typedef enum logic [1:0] {EXECUTE, FETCH, DECODE, WB} op_codes_e_t;
	typedef struct {int addr;
			int data;
			enum {RD,WR} op;
			} mem_ctl_st_t;

	typedef logic  bus_in [2**SEL - 1:0];// [SEL-1:0];
	typedef logic [SEL-1:0] bus_out;

endpackage
