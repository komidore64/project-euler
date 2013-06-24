#
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
# to try every route to solve this problem, as there are 2 ^ 99 altogether! If you
# could check one trillion (10 ^ 12) routes every second it would take over twenty
# billion years to check them all. There is an efficient algorithm to solve it. ;o)
#

def greatest_of(*arr)
  return arr.max
end

# load the numbers triangle
pyramid = File.open("sixty_seven.text", "r").readlines.collect do |row|
  row.chomp.split.collect do |elem|
    elem.to_i
  end
end

# setup the totals
# - same as pyramid except for all elements are zeros
# - except for last row which is copied from pyramid
totals = []
1.upto(pyramid.size) { |i| totals << Array.new(i, 0) }
totals[totals.size - 1] = pyramid.last

# here's where the magic happens
#
# we're building the totals from bottom to top, to avoid (slow) recursion.
(pyramid.size - 2).downto(0) do |row|
  totals[row].each_index do |col|
    totals[row][col] = pyramid[row][col] +
      greatest_of(totals[row + 1][col], totals[row + 1][col + 1])
  end
end

# boom
puts totals[0][0]

# time ruby sixty_seven.rb
#
# real    0m0.018s
# user    0m0.014s
# sys     0m0.003s
