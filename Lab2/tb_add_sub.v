module testbench;
 reg [3:0] x,y;
 reg z;
 wire [3:0] s;
 wire c;
 add_sub_4bit fl(x,y,z,s,c);
 initial
 $monitor(,$time,"x=%d,y=%d,z=%d,s=%d,c=%d",x,y,z,s,c);
 initial
 begin
 #0 x=4'd3;y=4'd4;z=1'b0;
 #4 x=4'd4;y=4'd3;z=1'b1;
 #4 x=4'd5;y=4'd2;z=1'b1;
 #4 x=4'd1;y=4'd1;z=1'b0;
 #4 x=4'd0;y=4'd0;z=1'b1;
 #4 x=4'd1;y=4'd0;z=1'b1;
 #4 x=4'd0;y=4'd1;z=1'b1;
 #4 x=4'd1;y=4'd1;z=1'b1;
 end
endmodule