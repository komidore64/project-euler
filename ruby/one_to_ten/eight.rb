# 
# Find the greatest product of five consecutive digits in the 1000-digit number.
# 

num_str = File.open("eight.text", "r").read.delete("\n")

digits = num_str.length - 5
largest_product = 0

digits.times do |i|
  temp_prod = num_str[i].chr.to_i
  temp_prod *= num_str[i + 1].chr.to_i
  temp_prod *= num_str[i + 2].chr.to_i
  temp_prod *= num_str[i + 3].chr.to_i
  temp_prod *= num_str[i + 4].chr.to_i
  largest_product = temp_prod if temp_prod > largest_product
end

puts largest_product

# time ruby eight.rb 
# 
# real  0m0.026s
# user  0m0.016s
# sys   0m0.006s
