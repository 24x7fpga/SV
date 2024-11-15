`include "cstrs_challenge.sv"

program test();

   cstrs_challenge ct;

   initial begin
      ct = new();
      ct.randomize();
      // 
      //std::randomize(ct);
      ct.disp();
   end

endprogram // test
