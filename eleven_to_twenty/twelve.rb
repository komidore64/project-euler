#
# The sequence of triangle numbers is generated
# by adding the natural numbers. So the 7th triangle
# number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28.
# The first ten terms would be:
#
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# Let us list the factors of the first seven triangle numbers:
#
#    1: 1
#    3: 1,3
#    6: 1,2,3,6
#   10: 1,2,5,10
#   15: 1,3,5,15
#   21: 1,3,7,21
#   28: 1,2,4,7,14,28
#
# We can see that 28 is the first triangle number to have over five divisors.
#
# What is the value of the first triangle number to
# have over five hundred divisors?
#

# i did a little reading on factoring and counting factors
# http://mathforum.org/library/drmath/view/57151.html

require 'mathn'

def prime_factors(num)
  return [num] if num.prime?
  ret = []
  Prime.each(num) do |div|
    if (num % div).zero?
      ret = ([div] << prime_factors(num / div)).flatten
      break
    end
  end
  ret
end

def factor_count(num)
  pfs = prime_factors(num)
  exp = Hash.new(0)
  pfs.each { |f| exp[f] += 1 }
  return exp.each_value.inject(1) { |count, v| count * (v + 1) }
end

def factors(num)
  factors = []
  (1..num).each { |n| factors << n if (num % n).zero? }
  return factors
end

n = 1
tri_num = 0

begin
  tri_num += n
  count = factor_count(tri_num)
  n += 1
end while (count < 500)

puts tri_num

# time ruby twelve.rb
#
# real    0m3.498s
# user    0m3.483s
# sys     0m0.004s
