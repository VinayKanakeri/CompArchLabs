module pc (d, clearb, clock, q);
input [4:0] d;
input clearb,clock;
output [4:0] q;

genvar j;
generate
    for (j =0 ;j<5 ;j=j+1 ) begin: pc_loop
        dff_async_clear d1(d[j], clearb, clk, q[j]);
        
    end
endgenerate
    
endmodule