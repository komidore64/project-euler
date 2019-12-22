# buckle up

pyramid = File.open("p0018.input", "r").readlines.collect { |row| row.chomp.split.collect { |elem| elem.to_i } }

# setup the totals
# - same as pyramid except for all elements are zeros
# - except for last row which is copied from pyramid
totals = []
1.upto(pyramid.size) { |i| totals << Array.new(i, 0) }
totals[totals.size - 1] = pyramid.last


(pyramid.size - 2).downto(0) do |row|
  totals[row].each_index do |col|
    a = totals[row + 1][col]
    b = totals[row + 1][col + 1]
    totals[row][col] = pyramid[row][col] + (a > b ? a : b)
  end
end

# boom
puts totals[0][0]
