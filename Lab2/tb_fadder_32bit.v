module testbench;
 reg [31:0] x,y;
 reg z;
 wire [31:0] s;
 wire c;
 fadder_32bit fl(s,c,x,y,z);
 initial
 $monitor(,$time,"x=%d,y=%d,z=%d,s=%d,c=%d",x,y,z,s,c);
 initial
 begin
 #0 x=32'd188;y=32'd100;z=1'b0;
 #4 x=32'd4654;y=32'd1765;z=1'b0;
 #4 x=32'd54;y=32'd65;z=1'b0;
 #4 x=32'd10000;y=32'd20000;z=1'b0;
 #4 x=32'd0;y=32'd0;z=1'b0;
 #4 x=32'd1;y=32'd0;z=1'b0;
 #4 x=32'd0;y=32'd1;z=1'b0;
 #4 x=32'd1;y=32'd1;z=1'b0;
 end
endmodule