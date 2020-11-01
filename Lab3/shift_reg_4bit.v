module shift_reg_4bit (clearb,in,clk,q,out
);
input in,clk;
output [3:0] q;
output out;
input clearb;

dff_async_clear d1(in, clearb, clk, q[0]);

genvar j;
generate for (j = 0;j<3 ;j=j+1) begin
dff_async_clear d2(q[j], clearb, clk, q[j+1]);   
    
end
endgenerate
assign out = q[3];


endmodule