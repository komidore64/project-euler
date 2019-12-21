#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
#

require 'mathn'

bfn = 600851475143

Math.sqrt(bfn).floor.downto(1) do |n|
  if (bfn % n).zero? && n.prime?
    puts n
    exit
  end
end
