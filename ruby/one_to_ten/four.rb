#
# A palindromic number reads the same both ways.
# The largest palindrome made from the product of
# two 2-digit numbers is 9009 = 91 * 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
#

class Fixnum
  def palindrome?
    self.to_s == self.to_s.reverse
  end
end

largest = 0

(100..999).each do |i|
  (100..999).each do |j|
    largest = i * j if (i * j).palindrome? && (i * j) > largest
  end
end

puts largest

# time ruby four.rb
#
# real    0m0.479s
# user    0m0.475s
# sys     0m0.003s
