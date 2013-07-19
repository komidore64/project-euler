#
# 2520 is the smallest number that can be divided by each of
# the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly
# divisible by all of the numbers from 1 to 20?
#

class Fixnum
  def twenty_div?
    [11, 12, 13, 14, 15, 16, 17, 18, 19, 20].each do |d|
      return false if !(self % d).zero?
    end
    true
  end
end

num = 20
num += 20 until num.twenty_div?
puts num

# time ruby five.rb
#
# real    0m4.636s
# user    0m4.616s
# sys     0m0.003s
