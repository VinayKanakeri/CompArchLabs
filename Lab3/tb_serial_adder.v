module tb_serial_adder ();
reg serA,serB,shift_control,clk,clearb;
wire [3:0] sum_reg;
wire [3:0] sa,sb;
wire sum_reg_out,x,y,sum,q,d;

serial_adder s1(serA,serB,shift_control,clk,clearb,sa,sb,sum_reg,sum_reg_out,x,y,sum,q,d);

initial
begin
clk=1'b1;
clearb = 1'b0;
shift_control = 1'b1;
end
always
#2 clk=~clk;
initial
$monitor($time,"sum %b, sumregout = %b, sa=%b sb= %b, serA=%b, serB=%b ,x=%b,y=%b,sum_ser=%b,q=%b, d= %b\n",sum_reg,sum_reg_out,sa,sb,serA,serB,x,y,sum,q,d);
initial
begin
serA= 1;serB=0;clearb=0;
#4 serA = 0;serB=1;clearb=1;
#4 serA = 1;serB=1;clearb=1;
#4 serA = 1;serB=0;clearb=1;
#4 serA = 0;serB=1;clearb=1;
#4 serA = 0;serB=1;clearb=1;
#4 serA = 1;serB=0;clearb=1;
#4 serA = 0;serB=1;clearb=1;
#4 serA = 1;serB=1;clearb=1;
#4 serA = 1;serB=0;clearb=1;
#4 serA = 0;serB=1;clearb=1;
#4 serA = 0;serB=1;clearb=1;
#4 serA = 1;serB=0;clearb=1;
#5 $finish;
end

endmodule