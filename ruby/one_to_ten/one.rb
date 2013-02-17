#
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.
#

puts (1..999).inject(0) { |accum, val| accum += val if (val % 3).zero? || (val % 5).zero?; accum }

# time ruby one.rb
#
# real    0m0.017s
# user    0m0.012s
# sys     0m0.005s
