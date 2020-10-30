module tb_adder_subtractor (
);
reg [3:0] a,b;
reg cin,s;
wire [3:0] out;
wire cout;

adder_subtractor_4bit a4(a,b,cin,s,out,cout);

initial
    begin
        $dumpfile("adder_subtractor_4bit.vcd");
        $dumpvars;
        $monitor(,$time,"a=0x%h, b=0x%h, cin=%b, s=%b, out = 0x%h, cout=%b",a,b,cin,s,out,cout);
        #0 a=4'h0; b=4'h0; cin= 1'b0; s=1'b0; 
        #2 a=4'h6; b=4'h2; cin= 1'b0; s=1'b0;
        #2 a=4'h8; b=4'h7; cin= 1'b0; s=1'b0;
        #2 a=4'ha; b=4'h6; cin= 1'b0; s=1'b0;
        #2 $finish;
    end
endmodule