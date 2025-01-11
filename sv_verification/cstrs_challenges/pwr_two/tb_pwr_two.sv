`include "test.sv"

module tb_pwr_two;
  
   // data width
   parameter N = 32;
   // no. of iteration
   parameter I = 16;
   // data range
   parameter R = 200;
   
  test #(N,I,R) t1 ();

endmodule // tb_pwr_two    
