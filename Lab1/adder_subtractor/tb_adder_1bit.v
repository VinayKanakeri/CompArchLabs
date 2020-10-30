module tb_adder_1bit (
);
    reg a,b,cin;
    wire sum,cout;

    adder_1bit a1(a,b,cin,sum,cout);

    initial
    begin
        $dumpfile("adder_1bit.vcd");
        $dumpvars;
        $monitor(,$time,"a=%b, b=%b, cin=%b, sum = %b, cout=%b", a,b,cin,sum,cout);
        #0 a=1'b0; b=1'b0; cin= 1'b0;
        #2 a=1'b0; b=1'b1; cin= 1'b1;
        #2 a=1'b1; b=1'b1; cin= 1'b1;
        #2 a=1'b1; b=1'b0; cin= 1'b0;
        #2 $finish;
    end
endmodule