#
# Work out the first ten digits of the sum of the
# these one-hundred 50-digit numbers.
#

puts File.open("p0013.input").read.split.collect { |n| n.to_i }.inject(:+).to_s[0..9]
