module full_adder (a,b,c,s,co);
  input  a,b,c;
  output s,co;
  
  wire x1;		// for sum
  wire a1,a2,a3;	//for carry
  wire o1;
  
  xor XG1 (x1,a,b);
  xor XG2 (s,x1,c);
  
  and AG1 (a1,a,b);
  and AG2 (a2,b,c);
  and AG3 (a3,a,c);
  
  or OG1 (o1,a1,a2);
  or OG2 (co,o1,a3);
  
endmodule
// Local Variables: 
// verilog-library-directories:("~/Projects/FPGA_Projects/SystemVerilog_Verification/sv_verification/full_adder" ".") 
// End:
