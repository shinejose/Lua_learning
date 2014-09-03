local seen={} ;
function dump(t,indent,cnt)
      seen[t] = true;
      local s= {};
      local n =0 ;
      for k,v in pairs(t) do
	    n = n +1 ;
	    s[n] =k ;
      end
      table.sort(s);
      for k,v in ipairs(s) do
	    print(indent,v);
	    v = t[v]; 
	    if type(v) == "table" and not seen[v] then
		  print(dump(v,indent.."\t"));
	    end	
      end
      return n;
end

dump(_G,"");
