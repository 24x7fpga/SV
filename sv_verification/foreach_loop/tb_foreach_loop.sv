module tb_foreach_loop; 
 
  int arr[ ];
  
  initial begin
    
    arr = new[16];
    
    $display("---------- Initialize the Array ----------");
    foreach(arr[i])begin
      arr[i] = i;
    end
     
    $display("------------ Display the Array -----------"); 
    foreach(arr[i])begin
      $display("arr[%0d] = %0d", i, arr[i]);
    end
    
  end 
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/Verification/sv_verification/foreach_loop/*") 
// End:
