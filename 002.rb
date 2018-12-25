list = [1, 2, 3]
sum = 0
list << list[-1] + list[-2] while list[-1] < 4_000_000
list.each { |x| sum += x if (x % 2).zero? }
p sum
