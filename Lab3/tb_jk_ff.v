module tb_jk_ff;
reg clk, j,k,clearb;
wire q,qb;
jk_ff jk(j,k,clk,clearb,q,qb);
initial
begin
clk=1'b1;
clearb = 1'b0;
end
always
#2 clk=~clk;
initial
$monitor($time,"j=%b, k=%b, clearb = %b,q=%b,qb=%b",j,k,clearb,q,qb);
initial
begin
j=0;k=1;clearb=1;
#4 j=1;k=1;clearb=1;
#4 j=0;k=0;clearb=1;
#4 j=0;k=1;clearb=1;
#4 j=1;k=0;clearb=1;
#4 j=1;k=1;clearb=1;
#4 j=0;k=1;clearb=1;
#5 $finish;
end
endmodule