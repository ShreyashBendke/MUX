module mux4x1_tb();

reg [3:0]I;
reg [1:0]S;
wire y;
integer i;

mux4x1 DUT(I,S,Y);

initial
begin
 {I,S}= 6'b000000;
end
initial
 begin 
    for(i=0;i<64;i=i+1)
      begin 
        {I,S}=i;
        #10;
      end
 end
endmodule


