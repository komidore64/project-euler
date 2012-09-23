#
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
#
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
#

(1..1000).each do |a|
  (1..1000).each do |b|
    (1..1000).each do |c|
      if (a * a) + (b * b) == (c * c) and a + b + c == 1000
        puts (a * b * c)
        exit
      end
    end
  end
end

# time ruby nine.rb
#
# real  6m46.012s
# user  6m37.283s
# sys   0m0.792s
