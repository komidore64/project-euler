#
# Starting in the top left corner of a 2 x 2 grid, there are 6 routes
# (without backtracking) to the bottom right corner.
#
# How many routes are there through a 20 x 20 grid?
#

# this is a shortest-path problem
# (2n)! / n!
#
# http://mathforum.org/advanced/robertd/manhattan.html

def fact(k)
  return 1 if k <= 1
  return k * fact(k - 1)
end

def choose(n, k)
  return (fact(n) / (fact(k) * fact(n - k)))
end

puts choose(40, 20)
