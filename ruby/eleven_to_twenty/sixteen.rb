#
# 2 ^ 15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2 ^ 1000?
#

puts (2 ** 1000).to_s.each_char.inject(0) { |sum, c| sum + c.to_i }

# time ruby sixteen.rb
#
# real    0m0.013s
# user    0m0.011s
# sys     0m0.002s
