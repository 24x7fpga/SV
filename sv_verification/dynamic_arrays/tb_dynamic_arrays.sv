module tb_dynamic_arrays; 

  int dyn1[], dyn2[];
  
  initial begin
    dyn1 = new[10];
    foreach(dyn1[i]) dyn1[i] = i;
      
    $display("--------------  Dynamic Array 1   --------------");
    foreach(dyn1[i]) $display("\t dyn1[%0d] = %0d", i, dyn1[i]);
    
    dyn2 = dyn1;    
    $display("--------------  Dynamic Array 2  --------------");
    foreach(dyn2[i]) $display("\t dyn2[%0d] = %0d", i, dyn2[i]);

    foreach(dyn2[i]) dyn2[i] = dyn2[i] + 5;
    $display("--------------  Dynamic Array 2  --------------");
    foreach(dyn2[i]) $display("\t dyn2[%0d] = %0d", i, dyn2[i]);
    
    dyn2 = new[15] (dyn1);
    $display("--------------  Dynamic Array 2  --------------");
    foreach(dyn2[i]) $display("\t dyn2[%0d] = %0d", i, dyn2[i]);
    
  end
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/dynamic_arrays/*") 
// End:
