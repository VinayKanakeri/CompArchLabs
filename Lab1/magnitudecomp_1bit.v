module magnitudecomp_1bit (a,b,z,x,y);
input a,b;
output z,x,y;

assign x = (~a)&b;
assign y = a&(~b);
assign z = ~(x|y);
    
endmodule