// Code generated by Icestudio 0.3.0-beta
// Fri, 23 Dec 2016 18:50:02 GMT

`default_nettype none

module main #(
 parameter v30f40a = 20
) (
 input v7c9917,
 input vb8a806,
 input ve0befb,
 output v32232e,
 output v1d1af8,
 output [3:0] v6a65cd
);
 localparam p4 = v30f40a;
 wire w0;
 wire w1;
 wire [0:3] w2;
 wire w3;
 wire w5;
 wire w6;
 assign v1d1af8 = w0;
 assign v32232e = w1;
 assign v6a65cd = w2;
 assign w3 = v7c9917;
 assign w5 = vb8a806;
 assign w6 = ve0befb;
 assign w1 = w0;
 main_bit_0 v2a3316 (
  .v608bd9(w0)
 );
 main_v4549a6 #(
  .N(p4)
 ) v4549a6 (
  .c(w2),
  .clk(w3),
  .ena(w5),
  .rst(w6)
 );
endmodule

module main_bit_0 (
 output v608bd9
);
 wire w0;
 assign v608bd9 = w0;
 main_bit_0_v68c173 v68c173 (
  .v(w0)
 );
endmodule

module main_bit_0_v68c173 (
 output v
);
 // Bit 0
 
 assign v = 1'b0;
endmodule

module main_v4549a6 #(
 parameter N = 0
) (
 input clk,
 input ena,
 input rst,
 output [3:0] c
);
 // Counter 4 bit
 // @include div.v
 
 wire trig; reg c;
 
 DIV #(N) div (
   .clk(clk),
   .out(trig)
 );
 
 always @(posedge trig) begin
   if (rst == 1)
     c <= 0;
   else if (ena == 1)
     c <= c + 1;
 end
 
endmodule
