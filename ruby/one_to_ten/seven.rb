# 
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10 001st prime number?
# 

require 'mathn'
primes = Prime.new
num = nil

10001.times { num = primes.next }

puts num

# time ruby seven.rb 
# 
# real  2m12.551s
# user  2m11.069s
# sys   0m0.220s
