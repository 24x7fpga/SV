`include "cstrs_challenge.sv"

program test #(parameter N = 2, R = 2) ();

  cstrs_challenge #(N) ct;

   initial begin
      ct = new();
     repeat(R) begin
       $display(" ------------- Start Cycle ------------- ");
       repeat(2**N) begin
	 	ct.randomize();
	 	ct.disp();
       end
       $display(" -------------- End Cycle ------------- ");
     end
   end

endprogram // test
