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

print(fizz(8))
