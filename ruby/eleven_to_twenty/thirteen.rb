#
# Work out the first ten digits of the sum of the
# these one-hundred 50-digit numbers.
#

puts File.open("thirteen.text").read.split.collect {|n| n.to_i}.inject(:+).to_s[0..9]

# time ruby thirteen.rb
#
# real  0m0.016s
# user  0m0.007s
# sys   0m0.006s
