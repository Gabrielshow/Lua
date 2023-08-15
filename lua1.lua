--lua table
a = {}
k = "x"
a[k] = 10
for i = 1, 100 do a[i] = i * 2 end
print(a[9])
print(a["x"])

-- we can assign by using a["x"] = 10 or a.x = 10
-- each piece of code in lua is called a chunk
-- semicolon is optional and line breaks play no role
-- this four are equal
-- a = 1 \n b = a * 2, a = 1; \n b = a * 2;, a = 1; b = a*2, a = 1 b=a*2
-- global variable
-- you can delete a global variable by assigning it to nil
b = 10
print(b)
b = nil
print(b)

--Lua is case-sensitive
-- comments in lua begin with "--"
-- block comments in begin with --[[ information ]] or if there is a new line
--[[
print(10)
--]]

--tyoes and values
print(type("hello world"))
a = "one string"
b = string.gsub(a, "one", "another")
print(a);
print(b)
