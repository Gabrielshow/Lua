--lua has automatic conversion
print("10" + 1)
print("10 + 1")
print("-5.3e-10" * "2")
print( 10 .. 20)  --string concatenation operator ..

--control flow
-- if n == nil then error(line .. "is not a valid number")
-- else
-- print(n * 2)
-- end

print(tostring(10) == "10")
print(10 .. " " == "10")

--functions
function fact(n)
if n == 0 then
	return 1
else
	return n * fact(n-1)
end
end

print(fact(12))

--Tables continued
days = { "sunday" , "monday"}

a = {x = 0, y = 4}
print(a.x)

--to refactor
l = list
while l do
	print(l.value)
	l = l.next
end
lines = {'1','2', '3', '4'}
list = nil
for line in ipairs(lines) do
list = {next = list, value = line}
end

polyline = {color = "blue", thickness = 2, npoints = 4, {x = 0, y = 0}, {x = -10, y = 10},
{x = -0, y = 1}, {x = 0, y = 1}}

print(polyline[2].x)

opnames = {["+"] = "add", ["-"] = "sub", ["*"]= "mul", ["/"] = "div"}
i = 20 s = "-"
a = {[i + 0] = s, [i + 1] = s..s, [i + 2] = s..s..s}
print(opnames[s]) --sub
print(a[22])

b = {x = 0, y = 0}
c = { "red", "green", "blue"}
--arrays in lua start from index 1
days = {[0] = "sunday", "Monday", "Tuesday"}
p = {x = 10, y = 47 ; "one", "two", "three" }


