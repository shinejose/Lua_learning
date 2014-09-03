-- 1.
-- lua5.2: 2-factorial.lua:5: stack overflow
-- stack traceback:
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	...
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:5: in function 'fact'
-- 	2-factorial.lua:25: in main chunk
-- 	[C]: in ?

-- 2. this file

function factorial(n)
      if (n<0 ) then
	    return nil;
      elseif( n==0 ) then 
	    return 1;
      else
	    return factorial(n-1) * n;
      end 
end

print("Enter a number:");
n = io.read("*n");
print(factorial(n));

