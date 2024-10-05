module tb_static_conv; 
 
  int  i = 75;
  real r = 13.75;
  
  
  initial begin
    
    int  m = i * (int '(r));
    real k = (real '(i)) * r;
    
    $display("multiplication result in int  = %0f", m);
    $display("multiplication result in real = %0f", k);
    
  end
  
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/static_conv/*") 
// End:
