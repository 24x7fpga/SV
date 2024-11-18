`include "test.sv"

module tb_randc_w_rand2;
   
   parameter N = 3; // width of the required variable
   parameter R = 4; // repeat the process R >= 2
  
  test #(N, R) t1 ();

endmodule // tb_randc_w_rand2   
