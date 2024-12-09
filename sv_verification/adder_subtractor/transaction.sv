class transaction #(parameter N = 4);

   // declare random variables
   // Outputs
   bit [N-1:0]       sum;
   bit  	     co;
   
   // Inputs
   rand bit [N-1:0]  a;
   rand bit [N-1:0]  b;
   rand bit          ci;
  
   // add constraints
   constraint c1 { a > 0; a <= 2**(N-1); b > 0; b <= 2**(N-1); }
   constraint c2 { a == 2**(N-1) -> b != 2**(N-1); b == 2**(N-1) -> a != 2**(N-1);}
  
   //constraint c3 { b < a;}
  
   //constraint c4 {ci == 1;}
  
   // display function
   function void DISP(string name);
      if(ci)
        $display(" %s: a = %d - b = %d, s = %d", name, a, b, $signed(sum));
      else
        $display(" %s: a = %d + b = %d, s = %d", name, a, b, sum);
   endfunction // DISP

endclass // transaction
