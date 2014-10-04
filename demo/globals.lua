--- 这是一个测试用的Lua模块
-- 在此处，我们添加模块的描述
-- @module Person
-- @author xuweirong
-- @license gnu

-- globals.lua
-- show all global variables

local seen={}

function dump(t,i)
	seen[t]=true
	local s={}
	local n=0
	for k in pairs(t) do
		n=n+1 s[n]=k
	end
	table.sort(s)
	for k,v in ipairs(s) do
		print(i,v)
		v=t[v]
		if type(v)=="table" and not seen[v] then
			dump(v,i.."\t")
		end
	end
end

dump(_G,"")
