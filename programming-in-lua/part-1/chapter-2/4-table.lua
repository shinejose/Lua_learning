print([[You create tables by means
of a constructor expression, which in its simplest form is written as {}:]]);


a = {} 	;			-- create a table and store its reference in 'a'
k = 'x' ;
a[k] = 10; 			-- new entry , with key = "x", and value =10
a[20] = "great"; 		-- new enrty , with key = 20 , and value ="great"

print(a["x"]);			-- > 10
k = 20;
print(a[k]);			-- > "great"
a["x"] = a["x"] +1 ;		-- increments entry "x"
print( a["x"] ) ;		-- > 11  


print("****************************************************************");

print([[A table is always anonymous. There is no fixed relationship between a
variable that holds a table and the table itself: ]]);


a = {};
a["x"] =10;
b  =a ; 			-- 'b' refers to the same table as 'a'
print(b["x"]);			-- > 10;
b["x"] =20;
print(a["x"]);			-- >20;
a = nil ;			-- only 'b' still refers to the table
print( type  (a));
-- print(a["x"]);   -- ERROR 
print(b["x"]);			-- > 20
b = nil ; 			-- no references left to the table , garbage collector  free the table memory

print("****************************************************************");

print([[Each table can store values with different types of indices, and it grows as
needed to accommodate new entries: ]]);

a = {}; 				-- empty table
-- create 10000 new entries
for i = 1,1000 do
      a[i] = i*2;
end 
print(a[9]);			-- > 18
a["x"] = 10;
print( a["x"]) ;			-- >10
print( a["y"]);				-- >nil
print( a[1] * a["x"] );			-- > 20

print("****************************************************************");

print("represent records");
a = {};
a.x =10;
print(a.x);			-- >10
print(a.y);			-- >nil

print("****************************************************************");
print("common mistake ");

a = {} ;
x = "y";
a[x] = 10 ; 			-- put 10 in field "y"
print(a[x]) ;			-- > 10   ,value of field "y"
print(a.x) ;			-- > nil  ,value of field "x" (undefined)
print(a.y) ;			-- > 10   ,value of field "y"


print("****************************************************************");
print("uses as array or list");


-- sequence 
a = {};
for i = 1,10 do
      a[i] = i+1;
end 

for i = 1,#a do
      print( a[i]);
end

-- not a sequence

print("****************************************************************");
print("string or  number ");

i = 10;  j = "10"; k ="+10" ;
a = {} ;
a [i] = "one value";
a [j] = "another value";
a [k] = "yet another value";
print(a[i]);			-- > one value
print(a[j]);			-- > another value 
print(a[k]);			-- > yet another value 
print(a[tonumber(j)]);		-- > one value
print(a[tonumber(k)]);		-- > one value





