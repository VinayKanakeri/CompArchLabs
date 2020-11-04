module reg_32bits_4 (d,clearb,clk,q
);
input [31:0] d [3:0];
output [31:0] q [3:0];
input clearb;
input [3:0] clk;

genvar j;
generate
    for (j =0 ;j<4 ;j=j+1 ) begin: reg_loop_2
        reg_32bits reg2(d[j], clearb, clk[j], q[j]);
        
    end
endgenerate
    
endmodule