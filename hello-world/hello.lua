print("hello, world!")

foo = "bar"
print(foo)

-- this is a comment

anotherVar = true
print("The boolean value is:", anotherVar)
print(type(anotherVar))

testString = " practicing some Lua "
octothorpeCount = #testString
lenCount = string.len(testString)

print(octothorpeCount, lenCount)

print("Concetanating these two items: " .. octothorpeCount .. testString .. lenCount)