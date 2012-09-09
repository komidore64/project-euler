=begin

In the 20 x 20 grid, four numbers along a diagonal line have been marked in red.

The product of these numbers is 26 * 63 * 78 * 14 = 1788696.

What is the greatest product of four adjacent numbers
in any direction (up, down, left, right, or diagonally) in the 20 x 20 grid?

=end

num_square = []

File.open("eleven.text", "r") do |file|
  while (line = file.gets)
    num_square << line.split
  end
end

greatest_product = 0

# check horizontal
17.times do |col|
  17.times do |row|
    temp_product = num_square[col][row].to_i
    temp_product *= num_square[col][row + 1].to_i
    temp_product *= num_square[col][row + 2].to_i
    temp_product *= num_square[col][row + 3].to_i
    greatest_product = temp_product if temp_product > greatest_product
  end
end

# check vertical
17.times do |col|
  17.times do |row|
    temp_product = num_square[col][row].to_i
    temp_product *= num_square[col + 1][row].to_i
    temp_product *= num_square[col + 2][row].to_i
    temp_product *= num_square[col + 3][row].to_i
    greatest_product = temp_product if temp_product > greatest_product
  end
end

# check diagonally (left-right, top-bottom)
17.times do |col|
  17.times do |row|
    temp_product = num_square[col][row].to_i
    temp_product *= num_square[col + 1][row + 1].to_i
    temp_product *= num_square[col + 2][row + 2].to_i
    temp_product *= num_square[col + 3][row + 3].to_i
    greatest_product = temp_product if temp_product > greatest_product
  end
end

# check diagonally (left-right, bottom-top)
19.downto(3) do |col|
  17.times do |row|
    temp_product = num_square[col][row].to_i
    temp_product *= num_square[col - 1][row + 1].to_i
    temp_product *= num_square[col - 2][row + 2].to_i
    temp_product *= num_square[col - 3][row + 3].to_i
    greatest_product = temp_product if temp_product > greatest_product
  end
end

puts greatest_product

# time ruby eleven.rb
#
# real  0m0.025s
# user  0m0.016s
# sys   0m0.006s
