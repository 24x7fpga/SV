class const_ex;

   rand bit [7:0] a;
   rand bit [7:0] b;

   constraint const_1 {a inside {[1:100]};}

   function void disp();
      $display("a = %d, b = %d", a, b);
   endfunction // disp

   // declare external constraint
   extern constraint extn;
   
endclass // const_ex

// external constraint outside the class
// it can be placed in a seperate file
constraint const_ex::extn{!(b inside {[25:75]}); b <= 100;}

module tb_const_in_ln_extn; 

   const_ex in_ln;

   initial begin
      in_ln = new();
      for(int i = 0; i < 16; i++) begin
	 in_ln.randomize() with {a >= 25; a <= 75;};
	 in_ln.disp();
      end
   end

endmodule // tb_const_in_ln_extn
// Local Variables: 
// verilog-library-directories:("~/Projects/FPGA_Projects/SystemVerilog_Verification/sv_verification/const_in_ln_extn" ".") 
// End:
