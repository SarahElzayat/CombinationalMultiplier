`include"Multiplier.v"
module multiplier_tb();
reg[3:0] in1,in2;
wire[7:0] out;
initial begin
$display ("INPUT1  INPUT2  OUTPUT");
$monitor ("%b, %b, %b", in1,in2, out);
in1 =0;
in2=0;


#10 in1=1010;
    in2=1010;
#10 in1=1111;
    in2=1111;
#10 in1=1010;
    in2=0001;
#10 in1=1110;
    in2=1101;
end
multiplier m1(
in1,
in2,
out);
endmodule

