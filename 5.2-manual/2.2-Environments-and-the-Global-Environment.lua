global = 10;
print(global) ;			-- > 10
print(_ENV.global);		-- > 10
print(type(_ENV));		-- >talbe

for k,v in pairs(_ENV) do
      print(type(v),v,k);
end

print("****************************************************************");
_ENV.another_global = 20;
print(_ENV.another_global);
for k,v in pairs(_ENV) do
      print(type(v),v,k);
end

