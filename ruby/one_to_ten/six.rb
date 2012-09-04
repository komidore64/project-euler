=begin
The sum of the squares of the first ten natural numbers is,

    1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first ten natural numbers is,

    (1 + 2 + ... + 10)^2 = 552 = 3025

Hence the difference between the sum of the squares of the
first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

Find the difference between the sum of the squares of the
first one hundred natural numbers and the square of the sum.
=end

# sum of squares
sum_squares = (1..100).collect { |n| n ** 2 }.inject { |sum, n| sum + n }

# square of sums
square_sums = (1..100).inject { |sum, n| sum + n } ** 2

puts square_sums - sum_squares
