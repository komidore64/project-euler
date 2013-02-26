#
# By starting at the top of the triangle below
# and moving to adjacent numbers on the row below,
# the maximum total from top to bottom is 23.
#
# 3
# 7 4
# 2 4 6
# 8 5 9 3
#
# That is, 3 + 7 + 4 + 9 = 23.
#
# Find the maximum total from top to bottom of the triangle below:
#
# 75
# 95 64
# 17 47 82
# 18 35 87 10
# 20 04 82 47 65
# 19 01 23 75 03 34
# 88 02 77 73 07 63 67
# 99 65 04 28 06 16 70 92
# 41 41 26 56 83 40 80 70 33
# 41 48 72 33 47 32 37 16 94 29
# 53 71 44 65 25 43 91 52 97 51 14
# 70 11 33 28 77 73 17 78 39 68 17 57
# 91 71 52 38 17 14 91 43 58 50 27 29 48
# 63 66 04 68 89 53 67 30 73 16 69 87 40 31
# 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
#
# NOTE: As there are only 16384 routes, it is possible to solve
# this problem by trying every route. However, Problem 67, is
# the same challenge with a triangle containing one-hundred rows;
# it cannot be solved by brute force, and requires a clever method! ;o)
#

# have we reached the bottom?
def at_max_row?(tri, row, col)
  row >= tri.size - 1
end

# have we reached the far right?
def at_max_col?(tri, row, col)
  col >= tri[tri.size - 1].size - 1
end

def greatest_of(*arr)
  arr.max
end

def traverse(triangle, row = 0, col = 0)
  if at_max_row?(triangle, row, col) || at_max_col?(triangle, row, col)
   return triangle[row][col]
  end

  return triangle[row][col] +
    greatest_of(traverse(triangle, row + 1, col), traverse(triangle, row + 1, col + 1))
end

# reads the file into an array with each row of the triangle being an inner-array of integers
pyramid = File.open("eighteen.text", "r").readlines.collect { |row| row.chomp.split.collect { |elem| elem.to_i } }

puts traverse(pyramid)

# time ruby eighteen.rb
#
# real    0m0.029s
# user    0m0.021s
# sys     0m0.007s