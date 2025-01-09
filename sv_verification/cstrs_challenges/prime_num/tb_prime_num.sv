`include "test.sv"

module tb_prime_num;

   parameter N = 200; // range prime numbers
   parameter I = 100;  // no of iterations
    
   test #(N, I) t1 ();

endmodule // tb_prime_num  
