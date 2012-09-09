=begin

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

=end

def is_prime?(num)
  return true if num == 2
  (2..(Math.sqrt(num).ceil)).each { |i| return false if (num % i).zero? }
  return true
end

bfn = 600851475143

Math.sqrt(bfn).floor.downto(1) do |n|
  if (bfn % n).zero? and is_prime?(n)
    puts n
    exit
  end
end

# time ruby three.rb 
# 
# real  0m0.695s
# user  0m0.683s
# sys   0m0.007s
