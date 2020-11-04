module reg_32bits(d,clearb,clk,q);

input [31:0] d;
input clearb,clk;
output [31:0] q;

genvar j;
generate
    for (j =0 ;j<32 ;j=j+1 ) begin: reg_loop
        dff_async_clear d1(d[j], clearb, clk, q[j]);
        
    end
endgenerate

    
endmodule