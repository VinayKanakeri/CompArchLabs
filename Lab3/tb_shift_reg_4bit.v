module shiftregtest;

reg clearb,in,clk;
wire [3:0] q;
wire out;
//reg [n-1:0] Q;
shift_reg_4bit shreg(clearb,in,clk,q,out);
initial
begin
clk=1;
end
always
#2 clk=~clk;
initial
$monitor($time,"EN=%b in= %b Q=%b\n",clearb,in,q);
initial
begin
in=0;clearb=0;
#4 in=1;clearb=1;
#4 in=1;clearb=1;
#4 in=0;clearb=1;
#4 in=1;clearb=1;
#4 in=1;clearb=1;
#4 in=0;clearb=1;
#5 $finish;
end
endmodule