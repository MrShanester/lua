-- Wheat Farm Steward
-- Starts Above Chest
-- Farm consists of 64 tilled blocks spanning 8 rows of 8-block long lanes with one lane of water in the middle

wheat = "minecraft:wheat"

function gather()
  turtle.forward()
  turtle.turnRight()
  for i = 1,9,1 do
    if turtle.inspectDown() == wheat then turtle.digDown() end
    for i = 1,7,1 do
      turtle.forward()
      if turtle.inspectDown() == wheat then turtle.digDown() end
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
  for i = 7,10,1 do
    turtle.forward()
  end
  turtle.turnRight()
  for i = 2,16,1 do
    turtle.select(i)
    turtle.dropDown()
  end
  gather()
end

gather()