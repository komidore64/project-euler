#
# By listing the first six prime numbers: 2, 3, 5, 7, 11,
# and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?
#

require 'mathn'

# new Prime class in 1.9.3
puts Prime.first(10001).last

# time ruby seven.rb
#
# real    0m0.143s
# user    0m0.138s
# sys     0m0.003s
