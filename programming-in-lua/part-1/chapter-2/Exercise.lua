print("****************************************************************");
-- 2.1 false
print(type(nil) == nil);

print("****************************************************************");
-- 2.2
-- (1)
-- .0e12 
-- .e12  (Wrong)
-- 0x12
-- 0xA
-- 0xFFFFFFFF
-- 0x1P10
-- 0.1e1
-- 0x0.1p1

-- (2)
print(.0e12); 			-- > 0
-- print(.e12);  ERROR
-- print(0.0e);  ERROR
print(0x12);			-- >18
-- print(0xABFG); ERROR
print(0xA);			-- >10
print(FFFF);			-- >nil
print(0xFFFFFFFF);		-- >4294967295
-- print(0x); ERROR
print( 0x1P10);			-- >1024
print(0.1e1);			-- >1
print(0x0.1p1);			-- >0.125

print("****************************************************************");
print("2.3");
-- (1)  can't
-- (2)  5 /2

print("****************************************************************");
print("2.4");
-- (1)

str = [=[
<![CDDATA[
 Hello world
]]>
]=];
print(str);

-- (2)
str = " <![CDDATA[\n Hello world\n]]>";
print(str);

print("****************************************************************");
print("2.5");
-- Literal store it with [[...]]  

print(" ****************************************************************");
print("2.6");
-- (1) {}
-- (2) yes , the first one
-- (3) ERROR 
a = {};
a.a = a ;
print ( a.a.a.a);		-- > {}
print( type (a.a.a.a));		-- > table
a.a.a.a =3
print( type(a) );		-- > table 
print( a.a);			-- > 3
print( type(a.a));		-- > number
-- print( type (a.a.a.a));   ERROR,because type(a.a) == number --> true 
-- print (a.a.a.a);          ERROR,because type(a.a ) == number --> true 


