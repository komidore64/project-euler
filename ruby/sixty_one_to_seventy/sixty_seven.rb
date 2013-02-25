# By starting at the top of the triangle below and moving to adjacent numbers
# on the row below, the maximum total from top to bottom is 23.
#
# 3
# 7 4
# 2 4 6
# 8 5 9 3
#
# That is, 3 + 7 + 4 + 9 = 23.
#
# Find the maximum total from top to bottom in triangle.txt (right click and
# 'Save Link/Target As...'), a 15K text file containing a triangle with
# one-hundred rows.
#
# NOTE: This is a much more difficult version of Problem 18. It is not possible
# to try every route to solve this problem, as there are 299 altogether! If you
# could check one trillion (1012) routes every second it would take over twenty
# billion years to check them all. There is an efficient algorithm to solve it. ;o)

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
print "reading/parsing file...."
pyramid = File.open("sixty_seven.text", "r").readlines.collect { |row| row.chomp.split.collect { |elem| elem.to_i } }
puts "DONE"

puts traverse(pyramid)
