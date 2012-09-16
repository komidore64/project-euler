# The following iterative sequence is defined
# for the set of positive integers:
#
# n --> n/2 (n is even)
# n --> 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate
# the following sequence:
#
# 13 --> 40 --> 20 --> 10 --> 5 --> 16 --> 8 -->4 --> 2 --> 1
#
# It can be seen that this sequence (starting at 13 and finishing at 1)
# contains 10 terms. Although it has not been
# proved yet (Collatz Problem), it is thought that
# all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.

def count_sequence(num)
  count = 0
  while (num > 1)
    if (num % 2).zero?
      num = num / 2
    else
      num = 3 * num + 1
    end
    count += 1
  end
  return count
end

pair = {:count => 0, :num => 1}

(1..999999).each do |n|
  temp_count = count_sequence(n)
  pair = {:count => temp_count, :num => n} if temp_count > pair[:count]
end

puts pair[:num]

# time ruby fourteen.rb
#
# real  1m13.480s
# user  1m12.930s
# sys   0m0.440s
