# x will be between 100 and 999
# y will be between 100 and 999

#maximum number can't exceed 998001
#min number can be 10000


def pali_array(input)
  array = []
  while input > 0
    if input.to_s.reverse.to_i == input
      array << input
    end
    input -= 1
  end
  array
end

def between?(x)
  x < 100
end

def multipliers(array)
  output = []
  array.each do |pali|
    x = 999
    while pali % x != 0
      x -= 1
      break if x == 100
    end
    output << [pali, x] if x > 100
  end
  output.each {|x| p "#{x[0]} #{x[1]}" if x[0]/x[1] < 1000}
end

multipliers(pali_array(998001))
