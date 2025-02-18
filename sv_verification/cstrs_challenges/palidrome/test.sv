`include "cstrs_challenge.sv"

program test #(parameter N = 8, I = 16);

   cstrs_challenge #(.N(N)) ct;

   initial begin
      ct = new();
      repeat(I)begin
	 ct.randomize();
	 ct.disp();
      end
   end

endprogram // test
