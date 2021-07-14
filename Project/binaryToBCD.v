module BCD (
input [7:0] biInput,
output  reg[3:0] H,
output  reg[3:0] T,
output  reg[3:0] O
);
integer i;
always @(biInput)
begin 
H=4'd0;
T=4'd0;
O=4'd0;
for (i=7; i>=0; i=i-1)
begin 
if (H>=5)
  H=H+3;
if (T>=5)
  T=T+3;
if (O>=5)
  O=O+3;
H=H<<1;
H[0]=T[3];
T=T<<1;
T[0]=O[3];
O=O<<1;
O[0]=biInput[i];
end
end
endmodule
