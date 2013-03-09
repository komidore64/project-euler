#
# A perfect number is a number for which the sum of its proper divisors is
# exactly equal to the number. For example, the sum of the proper divisors of
# 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
#
# A number n is called deficient if the sum of its proper divisors is less than
# n and it is called abundant if this sum exceeds n.
#
# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest
# number that can be written as the sum of two abundant numbers is 24. By
# mathematical analysis, it can be shown that all integers greater than 28123
# can be written as the sum of two abundant numbers. However, this upper limit
# cannot be reduced any further by analysis even though it is known that the
# greatest number that cannot be expressed as the sum of two abundant numbers
# is less than this limit.
#
# Find the sum of all the positive integers which cannot be written as the sum
# of two abundant numbers.
#

def proper_divisors(num)
  factors = []
  1.upto((num / 2).ceil).each do |n|
    factors << n if (num % n).zero?
  end
  factors
end

def check_quality(num)
  p_divs = proper_divisors(num)
  sum = p_divs.inject(:+)
  case
  when sum < num
    return -1
  when sum == num
    return 0
  when sum > num
    return 1
  else
    raise "shouldn't be here bro"
  end
end

def abundant_numbers_list(max = 28123)
  12.upto(max).inject([]) do |arr, n|
    arr << n if check_quality(n) > 0
    arr
  end
end

abundant_list = abundant_numbers_list
non_abundant_sum = 0

28123.downto(1).each do |num|
  included = false
  abundant_list.each do |abundant|
    if abundant_list.include?(num - abundant)
      included = true
      break
    end
  end
  non_abundant_sum += num unless included
end

puts non_abundant_sum

# time ruby twenty_three.rb
#
# real    67m23.392s
# user    67m16.093s
# sys     0m0.451s
#
# gross! reeeeeeeaaaaaally slow
