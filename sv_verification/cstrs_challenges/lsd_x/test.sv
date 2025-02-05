`include "cstrs_challenge.sv"

program test #(parameter N = 100, I = 16, X = 3);

   cstrs_challenge #(N,X) ct;

   initial begin
      ct = new();
      repeat(I)
	ct.randomize();
      ct.disp();
   end

endprogram // test
