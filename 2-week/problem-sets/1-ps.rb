
# Using comments, write out an approach in pseudocode for each of these first.

# Write a function that given an array, returns another array with each of the numbers multiplied by two. Don't change the original array, make sure you construct a copy!
# def array_times_two(array)
#   new_array =[]
#   array.each do |x|
#     new_array << x*2
#   end
#   p array
#   p new_array
#
#   new_array
# end
#
#
# # Tests — these should all spit out true!
# puts "\nArray times two:\n" + "*" * 15 + "\n"
# puts array_times_two([1, 2, 3]) == [2, 4, 6]
# puts array_times_two([0, -1, -2]) == [0, -2, -4]
# dont_change_this = [3, 4, 5]
# array_times_two(dont_change_this)
# puts dont_change_this == [3, 4, 5]

# *********************************************

# Write a function that given an array, now CHANGES each of the numbers to be twice as big. This should mutate the original array!
def array_times_two!(array)

 # array.map! { |x| x*2 }
  #
  array.each_index do |x|
    array[x] = array[x]*2
  end

  p array
end

# Tests
# puts "\nArray times two!:\n" + "*" * 15 + "\n"
# puts array_times_two!([1, 2, 3]) == [2, 4, 6]
# change_this = [6, 7, 8]
# array_times_two!(change_this)
# puts change_this == [12, 14, 16]

# *********************************************

# Write a function that given an array, returns another array of only the unique elements. I.e., return a version without duplicates.
def uniq(array)
  new_array = []
  array.each do |num_current|
    new_array << num_current unless new_array.include?(num_current)



  end

  p new_array

  # array.uniq
end
# #
# # Tests
# puts "\nUniq:\n" + "*" * 15 + "\n"
# puts uniq([5, 5, 5, 5]) == [5]
# puts uniq([1]) == [1]
# puts uniq([1, 2, 1, 3, 3]) == [1, 2, 3]

# *********************************************

# A Slippery Number is a number that has 3 as a factor or has 5 as a factor, but does *not* have both as factors.
# For example, 6 is a Slippery Number, but 30 is not. Write a function that given an N, returns an array of the first N Slippery numbers.

# You'll want to write a helper function that helps you determine which numbers are Slippery.

def slippery_numbers(n)
  slip_nums =[]


  i = 0
  until  slip_nums.length == n
    puts "working"
    slippery = is_slippery?(i)
    puts "slippery: "+slippery.to_s
     if slippery
      puts i
      puts slippery


      slip_nums << i
    end
    i += 1

  end
  p slip_nums
end

def is_slippery?(number)
  puts "checking"
  if  number%3 == 0 && number%5 == 0
    puts "adding flase"
    return false
  elsif number%3 == 0 || number%5 == 0
    puts "adding true"
    return true
  else
    puts "no match"
    return false
  end

end
#
# # Tests
# puts "\nSlippery numbers:\n" + "*" * 15 + "\n"
# puts slippery_numbers(1) == [3]
# puts slippery_numbers(2) == [3, 5]
# puts slippery_numbers(7) == [3, 5, 6, 9, 10, 12, 18]

# *********************************************
#
# # Write a function that finds whether any two elements in the array sum to 0. If it does, return true; else, return false.
def two_sum_to_zero?(array)
  sum_is_zero = false
  array.each_with_index do |x, index1|
    array.each_with_index do |y, index2|
      if x + y == 0  && index1!= index2
        return true
      end
    end
  end
  sum_is_zero
end
#
# # Tests
# puts "\nTwo sum to zero?:\n" + "*" * 15 + "\n"
# puts two_sum_to_zero?([4, 2, 6]) == false
# puts two_sum_to_zero?([-2, 5, 12, -3, 2]) == true
# puts two_sum_to_zero?([0, 5]) == false

# *********************************************

# A magic number is a number whose digits, when added together, sum to 7.
# For example, the number 34 would be a magic number, because 3 + 4 = 7.
# Write a function that finds the first N many magic numbers.

# You'll want to write a helper function that checks whether a given number is a magic number.
# Reminder: you can convert an integer to a string using #to_s. You can convert a string back to an integer using #to_i.

def magic_numbers(count)
  sum = 7.to_s
  magic_number_array = []
  i = 0
  while  magic_number_array.length < count
    current_num = i
    if is_magic_number?(current_num)
      puts "found magic nuber: #{current_num}"
      magic_number_array << current_num
      p magic_number_array
      i+=1
    else
      i+=1
    end
  end
  p magic_number_array
  magic_number_array
end

def is_magic_number?(number)
  digits = number.to_s.split("")
  p digits
  sum =0
  digits.each do |digit|
    integer = digit.to_i
    sum += integer
    # puts sum
  end
  if sum == 7
    return true
  else
    return false
  end
end
#
# # Tests
# puts "\nMagic numbers:\n" + "*" * 15 + "\n"
# puts magic_numbers(1) == [7]
# puts magic_numbers(3) == [7, 16, 25]
puts magic_numbers(20) == [7, 16, 25, 34, 43, 52, 61, 70, 106, 115, 124, 133, 142, 151, 160, 205, 214, 223, 232, 241]
