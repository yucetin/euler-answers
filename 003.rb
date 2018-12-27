def large_prime(number)
  x = 1
  prime_array = []
  while x != number
    if (number % x) == 0
      prime_array << x
      number = number/x
      x += 1
    else
      x += 1
    end
  end
  prime_array << x
  prime_array[-1]
end

p large_prime(600851475143)
