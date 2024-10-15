class example;
   
   rand  bit [3:0] a;
   randc bit [3:0] b;
   
   function void disp();
      $display("a = %0d, b = %0d", a, b);
   endfunction // disp
   
endclass // example

module tb_rand_randc; 

   example ex;

   initial begin
      ex = new();
      for(int i = 0; i < 16; i ++)begin
	 ex.randomize();
	 ex.disp();
      end
   end
   
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/FPGA_Projects/SystemVerilog_Verification/sv_verification/rand_randc" ".") 
// End:
