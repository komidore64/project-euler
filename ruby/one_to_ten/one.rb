=begin

If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

=end

total_sum = 0

# this goes from 0 to 999
1000.times { |i| total_sum += i if (i % 3).zero? or (i % 5).zero? }

puts total_sum
