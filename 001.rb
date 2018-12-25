sum = 0
counter = 1
while counter < 1000
  if (counter % 3) == 0 || (counter % 5) == 0
    sum += counter
  end
  counter += 1
end
p sum
