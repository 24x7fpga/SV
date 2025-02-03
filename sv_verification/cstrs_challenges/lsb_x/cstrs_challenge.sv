class cstrs_challenge #(parameter N = 100 , X = 3);

   // class properties
   rand int num;
   int      arr[$];

   // constraints
   constraint c1 {num > 0; num < N; !(num inside arr);}
   constraint c2 {num % 10 == X;}
  
   // post randonmize
   function void post_randomize();
     arr.push_back(num);
   endfunction

   // display function
   function void disp();
     foreach(arr[i])
       $display("arr[%0d] = %d", i, arr[i]);
   endfunction // disp

endclass // cstrs_challenge
