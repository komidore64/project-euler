#
# 2520 is the smallest number that can be divided by each of
# the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly
# divisible by all of the numbers from 1 to 20?
#

@divs = [11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

def is_twenty_div(num)
  @divs.each { |d| return false if not (num % d).zero? }
  return true
end

num = 2
num += 2 until is_twenty_div(num)
puts num

# time ruby five.rb
#
# real    0m33.729s
# user    0m33.638s
# sys     0m0.008s
