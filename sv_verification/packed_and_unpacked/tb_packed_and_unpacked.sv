module tb_packed_and_unpacked;
  
  logic [3:0][7:0] arr_packed;
  logic [3:0] arr_unpacked [4];
  
  
  initial begin
    
    arr_packed   = '{8'h87, 8'h65, 8'h43,8'h21};
    arr_unpacked = '{4'h1, 4'h2, 4'h3, 4'h4};
    
    
    $display("--------------  packed Array   --------------");
    foreach(arr_packed[i]) $display("arr_packed[%0d] = %0h", i, arr_packed[i]);
    
    $display("-------------- Unpacked Array  --------------");
    foreach(arr_unpacked[i]) $display("arr_unpacked[%0d] = %0d", i, arr_unpacked[i]);
    
  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/Verification/sv_verification/packed_and_unpacked/*") 
// End:
