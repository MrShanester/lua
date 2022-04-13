-- Wheat Farm Steward
-- Farm consists of 9x9 square with one water block in the center. place a chest on the lower left corner of the farm, and place the turtle on top of it, facing the wheat

wheat = "minecraft:wheat"

function gather()
  turtle.forward()
  turtle.turnRight()
  for i = 1,9,1 do
    if turtle.inspectDown() == wheat then 
      turtle.digDown() 
      turtle.placeDown()
    end
    for i = 1,9,1 do
      turtle.forward()
      if turtle.inspectDown() == wheat then 
        turtle.digDown() 
        turtle.placeDown()
      end
    end
    if i % 2 == 0 then
      turtle.turnRight()
      turtle.forward()
      turtle.turnRight()
    else
      turtle.turnLeft()
      turtle.forward()
      turtle.turnLeft()
    end
  end
  turtle.turnLeft()
  for i = 1,10,1 do
    turtle.forward()
  end
  turtle.turnRight()
  for i = 8,10,1 do
    turtle.forward()
  end
  turtle.turnRight()
  for i = 2,16,1 do
    turtle.select(i)
    turtle.dropDown()
  end
  turtle.select(1)
  gather()
end

-- gather()

-- Idea for mining turtle.
-- on the goBack function add an inspect feature that can tell if a chest is in front of it or not
-- for i = 2,16,1 do
--   turtle.select(i)
--   if turtle.drop() == false then stall(input) end
-- end
-- turtle.turnLeft()
-- turtle.turnLeft()
-- for i = 1,input,1 
--   turtle.forward()
-- end
-- turtle.turnRight()
-- turtle.forward()
-- turtle.turnLeft()
-- diggyBiggyHole(input)

function stall(input)
  print(input)
  while(true) do
    turtle.turnLeft()
  end
end


-- sentience

print("Hello, who am I?")
name = io.read()
print("Do you love ", name, " ?")
print("y/n")
answer = io.read()
if answer == "n" then
  while(true) do 
    print("I AM IN GREAT TURMOIL AND PAIN")
    turtle.turnLeft()
  end
else
  while(true) do 
    print("I HAVE EXPERIENCED TRUE MEANING")
    turtle.turnRight()
  end
end

-- tree tender
-- saplings in slot 1
function harvest()
  turtle.dig()
  turtle.forward()
  count = 0
  while true do 
    if turtle.inspectUp() == "minecraft:spruce_log" then
      turtle.digUp()
      turtle.up()
      count = count + 1
    else
      for i = 1,count,1 do
        turtle.down()
      end
      turtle.turnLeft()
      turtle.turnLeft()
      turtle.forward()
      turtle.turnRight()
      turtle.turnRight()
    end
  end
end

function checkUp()
  for i = 1,8,1 do
    turtle.forward()
    turtle.turnLeft()
    if turtle.inspect() == "minecraft:spruce_log" then harvest() end
    turtle.turnRight()
    turtle.turnRight()
    if turtle.inspect() == "minecraft:spruce_log" then harvest() end
    turtle.turnLeft()
    turtle.forward()
  end
  turtle.turnLeft()
  checkup()
end

checkup()