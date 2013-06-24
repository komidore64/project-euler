#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.
#

require 'mathn'

# new Prime class for 1.9.3
puts Prime.each(2000000).inject(:+)


# time ruby ten.rb
#
# real    0m4.778s
# user    0m4.757s
# sys     0m0.004s
