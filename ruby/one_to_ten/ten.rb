# 
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.
# 

def is_prime?(num)
  return true if num == 2
  (2..(Math.sqrt(num).ceil)).each do |i|
    return false if num % i == 0
  end
  return true
end

max = 2000000
total_sum = 0

(2..max).each do |i|
  total_sum += i if is_prime?(i)
end

puts total_sum

# time ruby ten.rb
#
# real  3m2.272s
# user  2m53.591s
# sys   0m0.421s
