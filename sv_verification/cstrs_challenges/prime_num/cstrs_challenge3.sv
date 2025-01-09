class cstrs_challenge3 #(N = 50);

   // class properties
   rand int num;
   int arr[$];

   // constraint logic  
   constraint c1 {num > 0; num < N;}
   constraint c2 {(num !=  2) -> (num % 2  != 0);}
   constraint c3 {(num !=  3) -> (num % 3  != 0);}
   constraint c4 {(num !=  5) -> (num % 5  != 0);}
   constraint c5 {(num !=  7) -> (num % 7  != 0);}
   constraint c6 {(num != 11) -> (num % 11 != 0);}
   constraint c7 {(num != 13) -> (num % 13 != 0);}
 
   // post randomize
   function void post_randomize();
     if(!(num inside {arr}))
     	arr.push_back(num);
   endfunction
          
   // display function
   function void disp();
      foreach(arr[i])begin
        $display("prime no :: %d", arr[i]);
      end  
   endfunction // disp

endclass // cstrs_challenge3
