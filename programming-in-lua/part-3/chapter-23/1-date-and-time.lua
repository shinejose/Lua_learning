function print_table(t)
      io.write("{");
      for k,v in pairs(t) do
	    io.write(k);
	    io.write(" = ");
	    io.write(tostring(v));
	    io.write(" , ");
      end
      io.write("}\n");
end

local start = os.clock();

print(os.time());


print(os.time({year= 1970 , month = 1 , day=1 , hour =0 })); -- > -28800 
print(os.time({year= 1970 , month = 1 , day=1 , hour =0 ,sec=1 })); -- > -28799 
print(os.time({year= 1970 , month =1, day=1})); -- > 14400


print_table(os.date("*t",906000490));


print(os.date());
print_table(os.date("*t") ) ;


print(os.date("a %A in %B"));
print(os.date("%x",906000490));

s = 0;
for i = 1 , 10000000 do
      s = s + i ;
end 


print(string.format("elapsed time: %.2f\n",os.clock() - start ));
