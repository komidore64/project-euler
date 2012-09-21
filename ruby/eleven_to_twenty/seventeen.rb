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
#

def get_one_to_nineteen(str_num)
  num = str_num.to_i
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
    raise "error"
  end
end

def get_ones_digit(str_num)
  num = str_num.to_i
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
    raise "error"
  end
end

def get_tens_digit(str_num)
  num = str_num.to_i
  case num
  when 0
    return ""
  when 1
    raise "shouldn't get 1"
  when 2
    return "twenty"
  when 3
    return "thirty"
  when 4
    return "forty"
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
    raise "error"
  end
end

def get_hundreds_digit(str_num)
  num = str_num[0].chr.to_i
  postfix = (str_num[1..2].to_i <= 0) ? "" : "and"
  case num
  when 0
    return ""
  when 1
    return "onehundred" + postfix
  when 2
    return "twohundred" + postfix
  when 3
    return "threehundred" + postfix
  when 4
    return "fourhundred" + postfix
  when 5
    return "fivehundred" + postfix
  when 6
    return "sixhundred" + postfix
  when 7
    return "sevenhundred" + postfix
  when 8
    return "eighthundred" + postfix
  when 9
    return "ninehundred" + postfix
  else
    raise "error"
  end
end

def get_thousands_digit(str_num)
  num = str_num.to_i
  case num
  when 0
    return ""
  when 1
    return "onethousand"
  else
    raise "error"
  end
end

def get_ten_and_one_digit(str_num)
  if str_num.to_i < 20
    return get_one_to_nineteen(str_num)
  elsif str_num.to_i >= 20
    words = ""
    words << get_tens_digit(str_num[0].chr)
    words << get_ones_digit(str_num[1].chr)
    return words
  else
    raise "error"
  end
end

@total_words = ""

(1..1000).each do |n|
  str = "%04d" % n
  str_num = ""
  str_num << get_thousands_digit(str[0].chr)
  str_num << get_hundreds_digit(str[1..3])
  str_num << get_ten_and_one_digit(str[2..3])
  @total_words << str_num
end

puts @total_words.gsub(/\s+/, "").length

# time ruby seventeen.rb
#
# real  0m0.027s
# user  0m0.022s
# sys   0m0.005s
