module CNT138T(CLK,CNT8);
   input CLK; output[7:0]CNT8; reg[7:0]CNT; wire LD;
	always@(posedge CLK or posedge LD) begin
	   if(LD)CNT<=8'b00000000; else CNT<=CNT+1; end
		assign CNT8=CNT;assign LD=(CNT==138);
	endmodule
	
