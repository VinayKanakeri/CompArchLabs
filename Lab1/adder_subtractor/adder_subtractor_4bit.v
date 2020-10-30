module adder_subtractor_4bit (a,b,cin,s,out,cout
);
input [3:0] a,b;
input cin,s;
output [3:0] out;
output cout;
reg [3:0] out;
reg cout;
wire [3:0] b_sub,out_add,out_sub;
wire cout_add,cout_sub;

adder_4bit a1(a,b,cin,out_add,cout_add);
assign b_sub=b^4'b1111;
adder_4bit a2(a,b_sub,s,out_sub,cout_sub);
always @(a or b or s or cin)
    if (s==1'b0) begin
      out = out_add;
      cout = cout_add;  
    end 
    else if (s==1'b1) begin
       
       out = out_sub;
       cout = cout_sub;
        
        
    end
    

endmodule