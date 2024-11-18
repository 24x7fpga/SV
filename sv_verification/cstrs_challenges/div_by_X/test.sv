`include "cstrs_challenge.sv"

program test #(parameter X = 3, N = 4) ();

   cstrs_challenge #(X, N) ct;

   initial begin
      ct = new();
      repeat(16) begin
	 ct.randomize();
	 ct.disp();
      end
      
   end

endprogram // test
