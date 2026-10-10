module mux2x1_tb;

reg a,b,sel;
wire y;
integer i;
 
mux2x1 DUT (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial 
begin
   
  for(i=0; i<8; i=i+1)
  begin
   {sel,a,b}=i;
   #10;
  end

  $finish;
end

endmodule
