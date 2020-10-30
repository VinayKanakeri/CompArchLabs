module adder_1bit_gate (a,b,cin,sum,cout
);
input a,b,cin;
output cout,sum;
wire sum1,cout1,cout2;
halfadder h1(a,b,sum1,cout1);
halfadder h2(sum1,cin,sum,cout2);

or(cout,cout1,cout2);


    
endmodule

module adder_1bit_df (a,b,cin,sum,cout
);
input a,b,cin;
output cout,sum;
wire sum1,cout1,cout2;
halfadder h1(a,b,sum1,cout1);
halfadder h2(sum1,cin,sum,cout2);

assign cout=cout1|cout2;


    
endmodule

