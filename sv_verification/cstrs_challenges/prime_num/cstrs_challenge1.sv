class cstrs_challenge1 #(N = 50);

   // class properties
   rand int num;
   int arr[$];

   // constraint logic  
  constraint c1 { num > 0; num < N; !(num inside {arr});}
   
   // post randomize
   function void post_randomize();
     if(prime(num))
     	arr.push_back(num);
   endfunction

   // prime
   function int prime(int n);
     for(int j = 2; j < n; j=j+1)begin
       if(n % j == 0)
         return 0;
     end
     return 1;
   endfunction
          
   // display function
   function void disp();
      foreach(arr[i])begin
        $display("prime no :: %d", arr[i]);
      end  
   endfunction // disp

endclass // cstrs_challenge1
