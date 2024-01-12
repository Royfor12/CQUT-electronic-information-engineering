module fenpin(clkin,clkout);
	input clkin;
	output clkout;
	parameter WIDTH = 24;
	parameter N=12000000;
	reg [WIDTH-1:0] cntp;
	reg clkout;
	always @(posedge clkin)
	begin
		if(cntp==(N-1))
			cntp<=0;
		else cntp<=cntp+1;
		end
	always @(posedge clkin)
	begin
		if(cntp<(N>>1))
			clkout<=0;
		else
		clkout<=1;
	end
	
endmodule