class cstrs_challenge #(int X = 5, N = 4);

   // class properties
   rand bit [N:0] y;

   constraint c {
      y % X == 0;
   }

   // display function
   function void disp();
      $display("Rand Num = %d", y);
   endfunction // disp

endclass // cstrs_challenge
