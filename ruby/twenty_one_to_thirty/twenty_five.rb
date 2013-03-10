#
# The Fibonacci sequence is defined by the recurrence relation:
#
# F(n) = F(n-1) + F(n-2), where F1 = 1 and F2 = 1.
# Hence the first 12 terms will be:
#
# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
#
# The 12th term, F12, is the first term to contain three digits.
#
# What is the first term in the Fibonacci sequence to contain 1000 digits?
#

prev_one = 1
prev_two = 1

hash = {:num => prev_one + prev_two, :term => 3}

while (true)
  if (hash[:num].to_s.size >= 1000)
    puts hash[:term]
    break
  end
  prev_one = prev_two
  prev_two = hash[:num]
  hash[:num] = prev_one + prev_two
  hash[:term] += 1
end

# time ruby twenty_five.rb
#
# real    0m0.220s
# user    0m0.215s
# sys     0m0.004s
