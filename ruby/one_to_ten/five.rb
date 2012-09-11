# 
# 2520 is the smallest number that can be divided by each of
# the numbers from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly
# divisible by all of the numbers from 1 to 20?
# 

@divs = [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

def is_twenty_div(num)
  @divs.each do |d|
    return false if (num % d).zero?
  end
  return true
end

num = 2
while not is_twenty_div(num)
  num += 2
end

puts num

=begin

this is is my favorite solution. too bad i didn't think of it.

require 'rational'
num = (1..20).inject(1) { |result, n| result.lcm n }

=end

# time ruby five.rb 
# 
# real  0m0.014s
# user  0m0.006s
# sys   0m0.006s
