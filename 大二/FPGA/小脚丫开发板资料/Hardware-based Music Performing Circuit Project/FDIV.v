module FDIV(CLK,PM);
  input CLK;output PM;reg[8:0]Q1;reg FULL;wire RST;
  always@(posedge CLK or posedge RST) begin
   if(RST) begin Q1<=0;FULL<=1;end
	  else begin Q1<=Q1+1;FULL<=0; end end
	  assign RST=(Q1==499);assign PM=FULL;
	  assign DOUT=Q1;
	  endmodule
	  