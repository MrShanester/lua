-- print "hello_world"

shane = {
  name = "shane",
  hair = "blonde",
  age = 21
}

-- print(shane.hair)

--FIZZBUZZ 

function fizz(input)
  if input % 15 == 0 then
    return "FIZZBUZZ"
  elseif input % 5 == 0 then
    return "FIZZ"
  elseif input % 3 == 0 then
    return "BUZZ"
  else 
    return "NO BUZZ 4 U"
  end
end

-- print(fizz(8))

-- commands the turtle to mine the block in front of it if it is unable to move forward


-- while not turtle.forward() do
--   turtle.dig()
-- end

-- identifies if the block in front of it is smooth stone or not. If not, it places a block of cobblestone in the hole.

badItems = {
  water = true,
  lava = true,
}

goodItems = {
  ironOre = true,
  coal = true,
  copperOre = true,
  goldOre = true,
  diamondOre = true,
  redstoneOre = true,
  lapisLazuli = true
}



function evaluate()
  -- check for lava or water
  if badItems[turtle.inspect()] then turtle.place() end

  --check for ore foward, up, and down
  if goodItems[turtle.inspect()] then 
    turtle.dig()
    evaluate()
  elseif goodItems[turtle.inspectUp()] then 
    turtle.dig()
    evaluate()
  elseif goodItems[turtle.inspectDown()] then 
    turtle.dig()
    evaluate()
  end

  --check for ore right
  turtle.turnRight()
  if goodItems[turtle.inspect()] then 
    turtle.dig()
    evaluate() 
  end
  --check for ore left
  for i=1,2,1 do turtle.turnLeft() end
  if goodItems[turtle.inspect()] then 
    turtle.dig()
    evaluate() 
  end
end

