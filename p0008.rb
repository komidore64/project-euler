#
# Find the greatest product of five consecutive digits in the 1000-digit number.
#

num_str = File.open("p0008.input", "r").read.delete("\n")

digits = num_str.length - 13
largest_product = 0

digits.times do |i|
  temp_prod = num_str[i].chr.to_i
  temp_prod *= num_str[i + 1].chr.to_i
  temp_prod *= num_str[i + 2].chr.to_i
  temp_prod *= num_str[i + 3].chr.to_i
  temp_prod *= num_str[i + 4].chr.to_i
  temp_prod *= num_str[i + 5].chr.to_i
  temp_prod *= num_str[i + 6].chr.to_i
  temp_prod *= num_str[i + 7].chr.to_i
  temp_prod *= num_str[i + 8].chr.to_i
  temp_prod *= num_str[i + 9].chr.to_i
  temp_prod *= num_str[i + 10].chr.to_i
  temp_prod *= num_str[i + 11].chr.to_i
  temp_prod *= num_str[i + 12].chr.to_i
  largest_product = temp_prod if temp_prod > largest_product
end

puts largest_product
