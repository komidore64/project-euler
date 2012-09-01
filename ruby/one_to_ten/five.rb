=begin
2520 is the smallest number that can be divided by each of
the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly
divisible by all of the numbers from 1 to 20?
=end

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
this one is my favorite but i don't understand how it works

require 'rational'
num = (1..20).inject(1) { |result, n| result.lcm n }

=end
