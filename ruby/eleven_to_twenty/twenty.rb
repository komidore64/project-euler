#
# n! means n * (n - 1) ... * 3 * 2 * 1
#
# For example, 10! = 10 * 9 * ... * 3 * 2 * 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!

def fact(k)
  return 1 if (k <= 1) # it's bad when you start seeing a backwards hash-rocket
  return k * fact(k - 1)
end

sum = 0

fact(100).to_s.each_char do |c|
  sum += c.to_i
end

puts sum

# time ruby twenty.rb
#
# real    0m0.015s
# user    0m0.012s
# sys     0m0.002s
