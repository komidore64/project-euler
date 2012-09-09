=begin

A palindromic number reads the same both ways.
The largest palindrome made from the product of
two 2-digit numbers is 9009 = 91 * 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=end

def is_palindrome?(num)
    return true if num.to_s == num.to_s.reverse
    return false
end

largest = 0

(100..999).each do |i|
  (100..999).each do |j|
    largest = i * j if is_palindrome?(i * j) and (i * j) > largest
  end
end

puts largest

# time ruby four.rb 
# 
# real  0m3.522s
# user  0m3.455s
# sys   0m0.013s
