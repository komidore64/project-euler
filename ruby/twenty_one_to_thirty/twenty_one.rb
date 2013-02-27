#
# Let d(n) be defined as the sum of proper divisors of n (numbers less than n
# which divide evenly into n).
# If d(a) = b and d(b) = a, where a != b, then a and b are an amicable pair and
# each of a and b are called amicable numbers.
#
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44,
# 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4,
# 71 and 142; so d(284) = 220.
#
# Evaluate the sum of all the amicable numbers under 10000.

def proper_divisors(num)
  factors = []
  1.upto((num / 2).ceil).each do |n| # the largest divisor can be only half the number
    factors << n if (num % n).zero?
  end
  factors
end

def d_sum(num)
  proper_divisors(num).inject(:+)
end

# after some reading, do/end blocks bind to the first method in a chain,
# so the 'puts' command in this case receives the do/end block.
# that causes inject to act unexpectedly because it is not receiving
# the do/end block, and acts differently.
puts 2.upto(9999).inject([]) { |arr, n|
  d1 = d_sum(n)
  d2 = d_sum(d1)
  if n == d2 && d1 != d2
    arr << n
    arr << d1
  end
  arr
}.uniq.inject(:+)

# side note: i first wrote this without inject (using an external variable),
# and that was faster.
#
# the moral of the story is: outside accumulator-variables are not bad.

# time ruby twenty_one.rb
#
# real    0m3.945s
# user    0m3.938s
# sys     0m0.002s
