#
# n! means n * (n - 1) ... * 3 * 2 * 1
#
# For example, 10! = 10 * 9 * ... * 3 * 2 * 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!

puts 100.downto(1).inject(:*).to_s.each_char.inject(0) { |sum, c| sum += c.to_i }

# time ruby twenty.rb
#
# real    0m0.012s
# user    0m0.010s
# sys     0m0.002s
