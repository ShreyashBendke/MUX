
module mux4x1beh_tb();
reg [3:0]I;
reg [1:0]S;
wire y;

mux4x1beh DUT(I,S,y);

task initialize ;
    begin 
       {I,S}=6'b000000;
    end
endtask

task inputs (
      input[3:0]i,
      input[1:0]sel
);
 begin 
   S=sel;
   I=i;
 end
endtask

initial 
  begin 
    initialize;
        inputs(4'b1000,2'b11);
        #10;
        inputs(4'b0010,2'b01);
        #10;
        inputs(4'b0100,2'b10);
        #10;
        inputs(4'b0001,2'b00);
        #10;
  end
initial
$monitor("the values of input = %b,sel_in=%b,output=%b",I,S,y);
endmodule
