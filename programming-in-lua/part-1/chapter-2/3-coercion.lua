print("10" + 1 ); 		-- > 11
print("10 + 1 ");		-- > 10 + 1
print("-5.3e-10"*"2");		-- > -1.06e-09
-- print("hello" +1 ) ;		-- > ERROR(cannot conver "hello")

print(10 .. 20 ) ;		-- > 1020
print(type(10 .. 20));		-- > string


-- 不要用Lua的内置Coercions
-- 手动转换


line = io.read();
n = tonumber(line);
if (n == nil) then
      error (line .. " is not a valid number") ;
else
      print(n*2);
end

print( tostring(10) == "10") ;	-- > true
print( 10  == "10") ;		-- >false
print(10 .. "" == "10");	-- >true


