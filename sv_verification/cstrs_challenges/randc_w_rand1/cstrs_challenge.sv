class cstrs_challenge #(parameter N = 2);

   // class properties
   rand bit [N-1:0] x;
   bit      [N-1:0] q [$];

   constraint c {
      !(x inside {q});
   }

   // post randomization
   function void post_randomize();
      q.push_front(x);
      // if the is == to the number of combinations
      if(q.size() == 2**N)
	q.delete();
   endfunction // post_randomize
      
   // display function
   function void disp();
      $display("x = %d", x);
   endfunction // disp

endclass // cstrs_challenge
