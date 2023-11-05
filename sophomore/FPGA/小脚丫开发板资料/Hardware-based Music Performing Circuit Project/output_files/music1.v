module music1(
    input [7:0] address,
	 input clock,
	 output [3:0] q
	 );
	 
	 music rom_inst(
	 .address(address),
	 .clock(clock),
	 .q(q)
	 );
	 endmodule
	 