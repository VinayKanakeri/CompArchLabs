module tb_jk_ff;
reg clk,clearb;
wire [3:0] q,qb,j,k;
counter_jk_sync jk(j,k,clk,clearb,q,qb);
initial
begin
clk=1'b1;
#4 clearb = 1'b1;
#4 clearb =1'b0;
#4 clearb = 1'b1;
end
always
#2 clk=~clk;
initial
$monitor($time,"clearb = %b,q=%b,qb=%b",clearb,q,qb);
initial
begin

#30 $finish;
end
endmodule