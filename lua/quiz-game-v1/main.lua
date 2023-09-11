print("Quiz about videogames")
print("Question: What was the name of the first Nintendo home console that implemented 3D graphics?")
print("1: Nintendo 64")
print("2: Nintendo Switch")
print("3: Playstation 4")
print("4: Xbox One")

local user_choice = tonumber(io.read())

if user_choice == 1 then
    print("Correct!")
else
    print("Wrong!")
end