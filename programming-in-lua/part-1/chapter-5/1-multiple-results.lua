s, e = string.find("hello Lua users", "Lua");
print(s,e);

print("****************************************************************");

function maximum(a)
      local max = a[1];
      local max_index = 1;
      for i =2, #a do
	    if (a[i] > max) then
		  max = a[i] ;
		  max_index=i;
	    end
      end
      return max,max_index;
end


print(maximum({8,2,24,52,1,32,52,23}));
print(max,max_index);

print("****************************************************************");


function foo0 () end
function foo1 () return "a" end
function foo2 () return "a","b" end

x,y =  foo2() ;			-- > x= "a" ,y = "b"
print(x,y);
x = foo2() ; 			-- > x= "a"
print(x);
x,y,z = foo2() ;		-- > x ="a",y="b",z=nil
print(x,y,z);

x,y = foo0();			-- > x=nil ,y =nil
print(x,y);
x,y = foo1();			-- > x= "a",y =nil
print(x,y);
x,y,z = foo2();			-- > x = "a",y="b",z=nil
print(x,y,z);

print("****************************************************************");
x,y = foo2(),20 ;		-- > x = "a" ,y =20;
print(x,y);
x,y = foo0(),20,30;		-- > x=nil,y=20 , 30 is discarded
print(x,y);



