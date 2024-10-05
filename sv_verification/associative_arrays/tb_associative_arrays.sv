module tb_associative_arrays; 
 
  byte assoc[byte];
  
  byte indx = 1;
  
  int pow_2[int] = '{0:1, 1:2, 2:4, 3:8, 4:16};
  
  initial begin
    
    do begin
      assoc[indx] = indx;
      indx = indx << 1;
    end while (indx != 0);
    
    $display("--------------  Associative Array   --------------");
    foreach(assoc[i]) $display("\t assoc[%0d] = %0d", i, assoc[i]);
    

    $display("--------------  Associative Array   --------------");
    for(int i=5; i<10; i++)
      pow_2[i] = 1 << i;
    $display("%p", pow_2);
    
  end
  
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/associative_arrays/*") 
// End:
