
module main(
input wire[3:0] A,B,
output wire[6:0] HUN,TENS,ONES
);
wire [7:0]temp;
wire [3:0] h,t,o;
Multiplier m(A,B,temp);
BCD b(temp,h,t,o);
sevenSegment sH(h,HUN);
sevenSegment sT(t,TENS);
sevenSegment sO(o,ONES);
endmodule