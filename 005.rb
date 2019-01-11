number_array = (2..20).to_a
divisors = []
number_array.each do |div|
  counter = 2
  x = []
  while counter <= div

    if div % counter == 0
      x << counter
      div = div / counter
    else
      counter += 1
    end
  end
  divisors << x
end

p divisors.select{|x| x.uniq.count <= 1}.sort{|x,y|y.length<=>x.length}.uniq{|s|s.first}.flatten.inject(:*)
