#
# If the numbers 1 to 5 are written out in words: one, two, three, four,
# five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written
# out in words, how many letters would be used?
#
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred
# and forty-two) contains 23 letters and 115 (one hundred and fifteen)
# contains 20 letters. The use of "and" when writing out numbers is
# in compliance with British usage.

def get_ones_digit(num)
  case num
  when 1
    return "one".length
  when 2
    return "two".length
  when 3
    return "three".length
  when 4
    return "four".length
  when 5
    return "five".length
  when 6
    return "six".length
  when 7
    return "seven".length
  when 8
    return "eight".length
  when 9
    return "nine".length
