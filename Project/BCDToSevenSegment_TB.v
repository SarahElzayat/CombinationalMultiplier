module sevenSegment_TB;

    reg [3:0] bcd;
    wire [6:0] seg;
    integer i;

    sevenSegment s1 (
        .bcd(bcd), 
        .seg(seg)
    );


    initial begin
        for(i = 0;i < 9;i = i+1) //run loop for 0 to 15.
        begin
            bcd = i; 
            #10;
        end     
    end
      
endmodule
