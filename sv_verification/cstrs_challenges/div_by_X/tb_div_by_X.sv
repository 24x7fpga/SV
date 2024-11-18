`include "test.sv"

module tb_div_by_X;
  
   parameter X = 3; // rand values divisible by X
   parameter N = 4; // data width
   
   test #(X, N) t1 ();

endmodule // tb_div_by_X   

