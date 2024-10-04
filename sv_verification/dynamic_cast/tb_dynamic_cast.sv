// Parent class
class parent_class;
   // class properties or variables
  int a, b, s;
  

   // task method
  task func ( );			     
    s = a + b;
    disp();
  endtask
  
  function void disp( );			     
    $display("Parent Class => a = %0d , b = %0d, sum s = %0d", a, b, s);
  endfunction


endclass

// Child Class
class child_class extends parent_class;
  // class properties or variables
  int m;
  
  // task method
  task func ( );
    m = a * b;
    disp();
  endtask
  
  function void disp( );
    $display("Child Class  => a = %0d , b = %0d, mul m = %0d", a, b, m);
  endfunction
  
endclass

module tb_dynamic_cast; 
 
  parent_class pr_obj;          // declare a handle for parent class
  child_class cl_obj;           // declare a handle for child class
  
  child_class cl_obj_2;         // declare another handle for child class
  
   initial begin 
     cl_obj = new( );           // construct an object
      
     pr_obj = cl_obj;           
     $cast(cl_obj_2, pr_obj);   // DYNAMIC CASTING
     							// parent class assigned to child class
     
     pr_obj.a = 20;				
     cl_obj.b = 15;
     
     
     $display("------------ Dynamic Casting ------------");
     cl_obj_2.func();           // access a method 
     
   end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/Verification/sv_verification/dynamic_cast/*") 
// End:
