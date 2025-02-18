class cstrs_challenge #(parameter N = 8);

   // class properties
   rand bit [N-1:0] palin;

   // constraint
   constraint c1 {foreach(palin[i]) palin[i] == palin[N-i];}
   
   // Verification Academy Soln
   //constraint palindrome {palin == {<<{palin}};}

   // display function
   function void disp();
      $display("palindrome :: %b", palin);
   endfunction // disp

endclass // cstrs_challenge
