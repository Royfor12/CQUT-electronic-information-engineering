module DECL7s (seg_data_1,seg_led_1);
input [3:0] seg_data_1; //数码管需显示0~9，故需要4位输入做译码
output [8:0] seg_led_1;
reg [8:0] seg [15:0];
initial
begin
seg[0]=9'h3f;
seg[1]=9'h06;
seg[2]=9'h5b;
seg[3]=9'h4f;
seg[4]=9'h66;
seg[5]=9'h6d;
seg[6]=9'h7d;
seg[7]=9'h07;
seg[8]=9'h7f;
seg[9]=9'h6f;
seg[10]=9'h77;
seg[11]=9'h7c;
seg[12]=9'h39;
seg[13]=9'h5e;
seg[14]=9'h79;
seg[15]=9'h71;

end
assign seg_led_1= seg[seg_data_1];
endmodule