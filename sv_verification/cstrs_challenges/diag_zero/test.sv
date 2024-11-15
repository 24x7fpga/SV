`include "cstrs_challenge.sv"

program test();

   cstrs_challenge ct;

   initial begin
      ct = new();
      ct.randomize();
      ct.disp();
   end

endprogram // test
