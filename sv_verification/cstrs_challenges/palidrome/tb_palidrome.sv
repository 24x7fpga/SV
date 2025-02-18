`include "test.sv"

module tb_palindrome;

   // width
   localparam N = 8;
   // iterations
   localparam I = 16;
   
   test #(.N(N),.I(I)) t1 ();

endmodule // tb_palindrome   

