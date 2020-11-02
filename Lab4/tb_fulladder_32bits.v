module tb_fulladder_32bits ();
    
reg [31:0] in1,in2;
reg cin;
wire [31:0] sum;
wire cout;

fulladder_32bits f1(cout, sum,in1,in2,cin);
initial begin
    $monitor(,$time,"in1 = %h, in2 = %h, cin = %b, sum = %h, cout = %b",in1,in2,cin,sum,cout);
end
initial begin
#2 in1 = 32'h00000000; in2 = 32'h00000000; cin = 1'b0;
#2 in1 = 32'h00001111; in2 = 32'h00002222; cin = 1'b1;
#2 in1 = 32'hf0000000; in2 = 32'hf0000000; cin = 1'b0;
#2 in1 = 32'h00000000; in2 = 32'h00000000; cin = 1'b0;
#2 in1 = 32'h00000000; in2 = 32'h00000000; cin = 1'b0;
#2 in1 = 32'h00000000; in2 = 32'h00000000; cin = 1'b0;
#2 in1 = 32'h00000000; in2 = 32'h00000000; cin = 1'b0;

end

endmodule