print(type("Hello World"));  	--> string 
print(type(10.4*3));            --> number 
print(type(print));		--> funtion 
print(type(type));		--> function 
print(type(true));		--> boolean
print(type(nil));		--> nil
print(type(type(X)));		--> string

print("****************************************************************\n");


print(type(a));			-- >nil
a = 10;
print(type(a));			-- >number
a = "a string";
print(type(a));			-- >string
a= print;
print(type(a));			-- >function
a(type(a));			-- >funtion

