module mux4x1(input [3:0]I,
              input [1:0]S,
              output y);
wire y0,y1;

mux2x1 M1(.a(I0),
          .b(I1),
          .sel(S0),
          .y(y0));

mux2x1 M2(.a(I2),
          .b(I3),
          .sel(S0),
          .y(y1));

mux2x1 M3(.a(y0),
          .b(y1),
          .sel(S1),
          .y(y));

endmodule
