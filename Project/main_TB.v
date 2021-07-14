module main_test();
 reg [3:0] a,b;
 wire [6:0] hun,tens,ones;
integer i,x;

initial begin
$display("INPUT1  INPUT2  hun \t tens \t ones");
$monitor("%b, %b, %b,%b,%b", a,b,hun,tens,ones);


for(i=0; i<=15; i=i+1)
   begin
   #5  a=i;
    
     for( x=0; x<=15; x=x+1)
       begin
     #5     b=x;

   end
  end

end
main m(a,b,hun,tens,ones);
endmodule
