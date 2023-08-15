--multiple assignment in lua
x = 10
a, b = 10, 2 * x
--also to swap
x, y = y, x
--also this is possible
a, i, j = {}, 1, 2
--the famous temp swap can be implemented in lua like this
--a[i] , a[j] = a[j], a[i]
a, b, c = 0, 1 --automatically sets 0 to nil
function f()
return 1, 2
end

a, b = f()
print(f())

--local variables
j = 10
local i = 1
print(i)

--local makes the variable scoped to the chunk
x = 10
local i = 1
while i <= x do
--local to the while
local x = i * 2
print(x)
i = i + 1
end

i = 24
if i > 20 then
local x
x = 20
print(x+2) --22
else
print(x)
end
print(x) --10

local a, b = 1, 10
if a < b then
print(a)
local a
print(a) --nil
end

do
local a = 4
local a2 = a*2
local c = 0.5
local b = 8
local D = ((b*b) - 4*a*c)
local d = math.sqrt(D)
x1 = (-b + d)/a2
x2 = (-b - d)/a2
print(x1)
print(x2)
end

a = -10
b = -11
if a < 0 then a = 0 end

function check()
if a < b then return a --because they are global functions they can be accessed anywhere in the script
else return b end
end

print(check())

a = {0, 1, 2, 3, 4}
local i = 1
while a[i] do
print(a[i])
i = i + 1
end

function f(x)
return x * 2
end

for i = 1, f(10) do print(i) end
for i = 10, 1, -1 do print(i) end

value = 8
a = {n = 10}
local found = nil
for i = 1, a.n do
if a [i] == value then
found = i
print("found value at"..i.."th index")
break
end
end

--break and return
local i = 1
a = {1, 2, 3, 4,7,8,9}
while a[i] do
if a[i] == v then break end
i = i + 1
print(i)
end

function add(x)
local sum = 0
for i, v in ipairs(a) do
sum = sum + v
end
return sum
end

--multiple result in lua
s, e = string.find("hello Lua users", "Lua")
print(s, e) -- 7, 9

function maximum(a)
local mi = 1
local m = a[mi]
for i, val in ipairs(a) do
if val > m then
mi = i
m = val
end
end
return m, mi
end

--unpack multiple return

print(unpack{10,20,30})
a, b = unpack{10,20,30}

--printresult = ""
--function print(...)
--for i, v in ipairs() do --table must be given to ipairs not number
--printresult = printresult..tostring(v).."\t"
--end
--printresult = printresult.."\n"
--end

function unpack(t,i)
i = i or I
if t[i] ~= nil then
return t[i],table.unpack(t, i+1)
end
end

local d, f = 7, 14
--string methods in lua
--string.upper(args)
--string.lower(args)
--string.gsub(MS,FS,RS)
--string.find(MS,FS, OSI, OEI)
--where MS = "Main string", FS="Find String", OSI ="optional string index" OEI= "optional end index", RS = Replace String
--string.reverse(arg)
--string.format(...)
--string.char(arg)
--string.byte(arg)
--string.len(arg)
--string.rep(str , n) --return string with n copies of string
--(..) concatenates string

--closures
names = {"Peter", "Paul", "Mary"}
grades = {Mary = 10, Paul=7, Peter =8}
table.sort(names, function(n1, n2) return grades [n1] > grades[n2]
end)


--perhaps we could also implement it as
function sortgrade(names, grades)
table.sort(names, function(n1, n2) return grades[n1] > grades[n2]
end)
end

function newCounter()
local i = 0
return function()
i  = i + 1
return i
end
end

c1 = newCounter()
print(c1())
print(c1())

--function digitButton(digit)
--return buttonlabel = digit , action = function() add_to_display(digit) end
--end

oldsin = math.sin
math_sin = function(x)
return oldsin(x * math.pi/180)
end

--or
do
local oldsin = math.sin
local k = math.pi/180
math_sin = function(x)
return oldsin(x*x)
end
end

do
local oldopen = io.open
io_open = function(filename, mode)
if access_ok (filename, mode) then
return oldopen(filename, mode)
else
return nil, "access denied"
end
end
end

lib = {}
lib_foo = function(x, y) return x + y end
lib_goo = function(x, y) return x -y end

--or

lib = {}
function lib_foo(x,y)
return x + y
end

function lib_goo(x,y)
return x - y
end

--iterators in lua
function list_item(t)
local i = 0
local n = table.getn(t)
return function()
i = i + 1
if i <= n then return
t[i] end
end
end

--for loop
--for <var_list> in <exp_list> do
--<body>
--end

--for k, v in pairs(a) do
--print(k,v)
--end

--coroutines
--it is similar to threads. program with threads runs several threads concurrently.
--coroutines on the other hand are collaborative
co = coroutine.create(function()
print("hi")
end)

--pipes & filters
function producer()
while true do
local x = io.read()
send(x)
end
end

function consumer()
while true do
local x = receive()
io.write(x, "\n")
end
end

--error and file handling
--file = io.open(filename, set, cur or end)[,mode])
--file:seek(whence, offset)
--set = offsets measured from the beginning of a file
--cur = offset measured from current position
--end = from the end of a file

--file:flush() --clears the default output buffer
--io.lines(optional(filename))--loops through file and closes the file in the end





