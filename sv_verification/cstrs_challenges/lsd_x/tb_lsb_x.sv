`include "test.sv"

module tb_lsd_x;

   // data range
   parameter N = 100;
   // no. of iterations
   parameter I = 16;
   // X value
   parameter X = 3;
   
   test #(N,I,X) t1 ();

endmodule // tb_lsd_x   
