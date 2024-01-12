module cnt4(clk,q);
	input clk;
	output [3:0]q;
	reg [3:0]q;
	always@(posedge clk)
	begin
		if(q<9)
		q<=q+1;
		else
		q<=0;
	end
endmodule