`include "cstrs_challenge1.sv"
`include "cstrs_challenge2.sv"
`include "cstrs_challenge3.sv"

program test #(parameter N = 32, I = 16, R = 100);

   // version 1
   // cstrs_challenge1 #(N,R) ct;
   // version 2
   // cstrs_challenge2 #(N,R) ct;
   // version 3
    cstrs_challenge3 #(N,R) ct;

   initial begin
      ct = new();
      repeat(I)
	ct.randomize();
      ct.disp();
   end

endprogram // test
