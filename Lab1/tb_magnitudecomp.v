module tb_magnitudecomp (

);

reg [3:0] a,b;
wire z,x,y;

magnitudecomp_gate m1(a,b,z,x,y);
initial 
begin
    $dumpfile("magnitudecomp.vcd");
    $dumpvars;
    $monitor(,$time,"input1 = %h, input2 = %h, equal = %b, less = %b, greater = %b", a,b,z,x,y);
    #1 a=4'hA; b=4'hC;
    #2 a=4'h9; b=4'h6;
    #2 a=4'h4; b=4'h4;
    #2 $finish;
end

    
endmodule