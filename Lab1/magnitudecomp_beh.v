module magnitudecomp_beh (a,b,z,x,y
);
input [3:0] a,b;
output z,x,y;
reg z,x,y;
always @(a or b)
    if (a==b)
        begin
            z=1'b1;
            x=1'b0;
            y=1'b0;
        end 
    else if (a<b)
        begin
            z=1'b0;
            x=1'b1;
            y=1'b0;
        end 
    else 
        begin
            z=1'b0;
            x=1'b0;
            y=1'b1;
        end  
    
endmodule