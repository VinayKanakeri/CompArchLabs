module fadder_32bit (sum,cout,a,b,c);
input [31:0] a,b;
input c;
output [31:0] sum;
output cout;
wire [3:0] cout_in;

fadder_8bit f1(sum[7:0],cout_in[0],a[7:0],b[7:0],c);

genvar j;
generate for (j=0;j<3;j=j+1) begin: adder_loop
fadder_8bit f2(sum[((j+2)*8-1):(j+1)*8],cout_in[j+1],a[((j+2)*8-1):(j+1)*8],b[((j+2)*8-1):(j+1)*8],cout_in[j]);
end
endgenerate
assign cout = cout_in[31];

endmodule