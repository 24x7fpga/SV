`include "test.sv"

module tb_rand_wo_randc;
   
   parameter N = 3; // width of the required variable
   parameter R = 4; // repeat the process R >= 2
  
  test #(N, R) t1 ();

endmodule // tb_rand_wo_randc   

