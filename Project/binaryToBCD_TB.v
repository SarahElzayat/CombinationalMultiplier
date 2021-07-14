module binaryToBCD_TB();
reg [7:0] Input;
wire[3:0] H;
wire[3:0] T;
wire[3:0] O;
BCD b1 (Input,H,T,O);
initial 
begin 
$display("BINARY IS      BCD IS"     );
$monitor("%b , %b %b %b ",Input,H,T,O);
Input = 8'b00000000;
#10 Input = 8'b00000001;
#10 Input = 8'b00000101;
#10 Input = 8'b00010101;
#10 Input = 8'b00110101;
#10 Input = 8'b01110011;
#10 Input = 8'b10110111;
#10 Input = 8'b11110001;
#10 Input = 8'b10111001;
#10 Input = 8'b11110101;
#10 Input = 8'b11111111;

end
endmodule
