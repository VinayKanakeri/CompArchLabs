module tb32reg;
reg [31:0] d;
reg clk,reset;
wire [31:0] q;
reg_32bits R(d,reset,clk,q);
always @(clk)
#5 clk<=~clk;
initial
$monitor(,$time,"q = %h, d = %h,reset = %b",q,d,reset);
initial
begin
clk= 1'b1;
reset=1'b0;//reset the register
#20 reset=1'b1;
#20 d=32'hAFAFAFAF;
#200 $finish;
end
endmodule