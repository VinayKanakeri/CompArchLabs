module adder_4bit(a,b,cin,sum,cout
);
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;
wire [3:0] cout_loop;
adder_1bit_gate a1(a[0],b[0],cin,sum[0],cout_loop[0]);

genvar j;

generate for (j=0;j<3;j=j+1) begin: adder_loop
adder_1bit_df a(a[j+1],b[j+1],cout_loop[j],sum[j+1],cout_loop[j+1]);
end
endgenerate
assign cout = cout_loop[3];
    
endmodule