function fact (n)
      if (n == 0) then
	    return 1;
      else
	    return fact(n-1) * n ;
      end
end

function fact2(n)
      local ret = 1 ;
      for  i  = 2 , n  do
	    ret = ret * i;
      end
      return ret;
end 

print("Enter a number:") ;


n = io.read("*n");
while ( n > 0 ) do
      a =  io.read("*n"); 		-- reads a number
      n = n-1; 

      print(fact(a));
end 

