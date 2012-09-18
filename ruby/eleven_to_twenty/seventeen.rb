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

def get_ten_to_nineteen(num)
  case num
  when 10
    return "ten"
  when 11
    return "eleven"
  when 12
    return "twelve"
  when 13
    return "thirteen"
  when 14
    return "fourteen"
  when 15
    return "fifteen"
  when 16
    return "sixteen"
  when 17
    return "seventeen"
  when 18
    return "eighteen"
  when 19
    return "nineteen"
  else
    raise "oh snap"
  end
end

def get_ones_digit(num)
  case num
  when 0
    return ""
  when 1
    return "one"
  when 2
    return "two"
  when 3
    return "three"
  when 4
    return "four"
  when 5
    return "five"
  when 6
    return "six"
  when 7
    return "seven"
  when 8
    return "eight"
  when 9
    return "nine"
  else
    raise "oh noes"
  end
end

def get_tens_digit(num)
  case num
  when 0
    return ""
  when 1
    raise "shouldn't hit 10"
  when 2
    return "twenty"
  when 3
    return "thirty"
  when 4
    return "fourty"
  when 5
    return "fifty"
  when 6
    return "sixty"
  when 7
    return "seventy"
  when 8
    return "eighty"
  when 9
    return "ninety"
  else
    raise "something died"
  end
end

def get_hundred_digit(num)
  case num
  when 0
    return ""
  when 1
    return "one hundred and"
  when 2
    return "two hundred and"
  when 3
    return "three hundred and"
  when 4
    return "four hundred and"
  when 5
    return "five hundred and"
  when 6
    return "six hundred and"
  when 7
    return "seven hundred and"
  when 8
    return "eight hundred and"
  when 9
    return "nine hundred and"
  else
    raise "shouldn't be here"
  end
end

def get_thousand_digit(num)
  case num
  when 0
    return ""
  when 1
    return "one thousand"
  else
    raise "busted"
  end
end


total_words = ""

(1..100).each do |n|
  str = "%04d" % n
  if n > 9 and n < 20
    total_words << get_ten_to_nineteen(n)
  else
    total_words << get_thousand_digit(n[0]) + get_hundred_digit(n[1]) + get_tens_digit(n[2]) + get_ones_digit(n[3]) # fail
  end
end

puts total_words.delete(" ").length
