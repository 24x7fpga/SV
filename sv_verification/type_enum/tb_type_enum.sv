module tb_type_enum; 
 
  typedef enum {apple, banana, peach, orange, berry} fruits_t;
  
  fruits_t fruits;
  
  initial begin
    //fruits.first();
    $display("--------------  Enumeration   --------------");
    for(int i = 0; i < fruits.num(); i++)begin
      $display(" \t fruits[%0d] = %0s", fruits , fruits.name);
      fruits = fruits.next();
    end
  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/Verification/sv_verification/type_enum/*") 
// End:
