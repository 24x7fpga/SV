// Parent class
class parent_class;
   // class properties or variables
  int a, b, s;

   // task method
  task func1 (int a,b);
    s      = a + b;
    $display("Parent Class => a = %0d , b = %0d, sum s = %0d", a, b, s);
  endtask

   virtual task func2 (int a,b);
    s      = a + b;
    $display("Parent Class => a = %0d , b = %0d, sum s = %0d", a, b, s);
  endtask


endclass

// Child Class
class child_class extends parent_class;
  // class properties or variables
  int a, b, m;

  // task method
  task func1 (int a,b);
    m      = a * b;
    $display("Child Class  => a = %0d , b = %0d, mul m = %0d", a, b, m);
  endtask

  virtual task func2 (int a,b); // good practice to declare a class method as virtual
    m      = a * b;
    $display("Child Class  => a = %0d , b = %0d, mul m = %0d", a, b, m);
  endtask

endclass

module tb_virtual_keyword; 
 
  parent_class pr_obj;          // declare a handle for parent class
  child_class cl_obj;           // declare a handle for child class


   initial begin
     cl_obj = new( );           // construct an object

     pr_obj = cl_obj;           // WHEN THE CHILD CLASS HANDLE POINTS TO THE PARENT CLASS HANDLE

     $display("------------ Non-Virtual Method ------------");
     pr_obj.func1(30,10);       // access a method

     $display("-------------- Virtual Method --------------");
     pr_obj.func2(30,10);       // access a method

   end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/fpgaProjects/SystemVerilog_Verification/sv_verification/virtual_keyword/*") 
// End:
