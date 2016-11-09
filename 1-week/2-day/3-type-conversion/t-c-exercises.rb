# 1.
#   Define a method, #two_digit_sum, that accepts a two-digit integer as an argument.
#   Your method should return the sum of the two digits.
#   two_digit_sum(34) == 7 # ==> 3 + 4 == 7



def two_digit_sum(int)
  digit1 = (int / 10).round
  digit2 = int % 10
  sum = digit1 + digit2
end

# puts two_digit_sum(34)
# puts two_digit_sum(39)
# puts two_digit_sum(99)


# 2.
#   Define a method, #orders_of_magnitude, that accepts an integer as an argument.
#   Your method should return the number of digits in the integer.
#   orders_of_magnitude(99) == 2
#   orders_of_magnitude(1034) == 4

def orders_of_magnitude(int)
  length = int.to_s.length

end

# puts orders_of_magnitude(10000)
#  => 5

# 3.
#   Define a method, #accurate_division, that accepts two integers as arguments.
#   Your method should return the quotient of the two integers (rounding to 3 decimal places).
#
#   accurate_division(3, 4) == 0.75
#   accurate_division(1, 3) == 0.333
#   accurate_division(7, 6) == 1.167


def accurate_division(int1, int2)
  accurate_quotient = ( int1.to_f ) / (int2.to_f)
end

# puts accurate_division(5,4)

# => 1.25

# 4.
#   Define a method, #two_digit_format, that accepts an integer, n, and returns a string version of that integer.
#   If the integer has a single digit, you should append a 0.
#   You can assume that n will always be two or fewer digits.
#   Hint: try creating a string using '0' + n.to_s, then use #slice to get the last two digits!
#   two_digit_format(8) == "08"
#   two_digit_format(12) == "12"

def two_digit_format(n)
  if(n < 10)
   return "0" + n.to_s
  else
    return n.to_s.slice(-2..-1)
  end
end

# puts two_digit_format(4)
# puts two_digit_format(44)
# puts two_digit_format(423424)
 # => 24

# 5.
#   Define a method, #time_string that accepts 3 arguments: hours, minutes, and seconds (all integers).
#   Convert these integers into one contiguous time string that has the following format:
#   "hh:mm:ss"
#   Use the method, #two_digit_format, to help you do this!

#   time_string(12, 1, 3) == "12:01:03"
#   time_string(1, 10, 6) == "01:10:06"


def time(hours, minutes, seconds)
  hh = two_digit_format(hours)
  mm = two_digit_format(minutes)
  ss = two_digit_format(seconds)

  time_displayed = "#{hh}:#{mm}:#{ss}"
end

puts time( 9, 30, 30)
