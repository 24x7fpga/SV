`include "cstrs_challenge1.sv"
`include "cstrs_challenge2.sv"

program test #(parameter N = 2, R = 2) ();

   // Version 1
   cstrs_challenge1 #(N) ct;
   // Version 2
   //cstrs_challenge2 #(N) ct;

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
