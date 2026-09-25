local name = "Nick"
local age = 32

print(name, age)

local score = 42
print("Score:", score)


-- this a comment
--
--
--[[
      This is a multiple line
      comment
--]]

local x = ... 
print(x)

local enabled = true
local finished = false

local name = "This is a longer string - are you going to choke bish????????"
print(name)


local person = {
  name = "Nicky",
  age = 24
}

print(person.name, person.age)

local function hello()
  print("Local bishcraft")  
end
hello()

local bish = "Nick"
print("Hello " .. bish)

local x = 42
print(tostring(x))


x = 42
y = 43

print(x ~= y)

if 0 then 
  print("This runs!")
end

if "" then
  print("This also runs!")
end


local age = 20 

if age < 18 then
  print("child")
elseif age < 65 then
    print("adult")
else
  print("senior")
end

local x = 1

while x <= 5 do
  print(x)
  x = x + 1
end

for i = 1, 5 do 
  print(i)
end

for i = 0, 10, 2 do
  print(i)
end


for i = 5, 1, -1 do
  print(i)
end

local fruits = {
  "apple",
  "orange",
  "banana"
}

print(fruits[1])
print(fruits[2])
print(fruits[3])

for i, fruit in ipairs(fruits) do
  print(i, fruit)
end


local person = {
  name = "Lawrence",
  age = 25,
  city = Pittsburgh
}

print(person.name, person.age, person.city)


-- table
local person = {
  name = "Alcie", 
  age = 25, 

  hobbies = {
    "music",
    "programming",
    "games"
  }
}

print(person.hobbies[1], person.name)

local function add(a, b)
  return a + b
end

local result = add(10, 20)

print(result)


local function tf()
  return 10, 20
end

local x, y = tf()
print(x)
print(y)

local hello = function()
  print('hello')
end

hello()

local function run(f)
  f()
end

run(function() 
  print("hello from a function!")
end)

local name = nil

local display_name = name or "unknown"

print(display_name)

local enabled = false

enabled = enabled and "yes" or "no"

print(enabled)


local mathstuff = require("mathstuff")

print(mathstuff.add(10, 20))


local person = {
  name = 
    "Larry"
}

local mt = {
  __index = {
    greet = function(self)
      print("Hello, I am " .. self.name)
    end
  }
}

setmetatable(person, mt)

person:greet()

-- small program to ground concepts

local people = {
  {
    name = "Nish", 
    age = 25
  },
  {
    name = "bobby", 
    age = 17
  },
  {
    name = "Charlie",
    age = 33
  }
}

local function describe_person(person)
  if person.age >= 18 then
    print(person.name .. " is an adult")
else
    print(person.name .. " is a minor")
  end
end

for _, person in ipairs(people) do
  describe_person(person)
end

local function make_counter()
  local count = 0

  return function()
    count = count + 1
    return count
  end
end

local counter =  make_counter()

print(counter())
print(counter())
print(counter())
print(counter())
print(counter())
print(counter())
print(counter())
print(counter())
  

