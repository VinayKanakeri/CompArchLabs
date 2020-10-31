module fadder_8bit (sum,cout,a,b,c);
input [7:0] a,b;
input c;
output [7:0] sum;
output cout;

wire [7:0] cout_in;

FADDER f1(sum[0],cout_in[0],a[0],b[0],c);

genvar j;
generate for (j=0;j<7;j=j+1) begin: adder_loop
FADDER f2(sum[j+1],cout_in[j+1],a[j+1],b[j+1],cout_in[j]);
end
endgenerate
assign cout = cout_in[7];
    
endmodule