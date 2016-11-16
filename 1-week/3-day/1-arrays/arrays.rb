# 1
# Write a method, #first_n_evens(n) that returns an array of the first n even numbers, starting from 0.
#   first_n_evens(1) # ==> [0]
#   first_n_evens(3) # ==> [0, 2, 4]

def first_n_evens(n)
  evens =[]

  i = 0
  while i < n
    even_num = i*2
    evens.push(even_num)
    i+=1
  end
  evens
end
# puts first_n_evens(4)
# ==> 0246[]


# 2
# Write a method, #reverse(array) that reverses an array in-place; don't create any new arrays, and don't use array.reverse!
#
#   reverse([1])          # ==> [1]
#   reverse([1, 2])       # ==> [2, 1]
#   reverse([4, 5, 6, 7]) # ==> [7, 6, 5, 4]

def reverse(array)
  i=0
  length = array.length
  array_reversed = []
  while i< length
    num = array.pop

    array_reversed << num
    i+=1
  end
  array_reversed
end
# puts reverse([4, 5, 6, 7])

# 3
# Write a method, #rotate(array, shift) that, given an array and an integer (shift), rotates the array in-place by the shift amount.

# Hint: some combination of #shift/#push or #unshift/#pop should come in handy here.
#   rotate([1, 2, 3, 4], 1)  # ==> [4, 1, 2, 3]
#   rotate([1, 2], 2)        # ==> [1, 2]
#   rotate([4, 5, 6, 7], 3)  # ==> [5, 6, 7, 4]

def rotate(array, shift)
  i = 1
  while i <= shift
    elmnt = array.pop
    array.unshift(elmnt)
    i+=1
  end

  return array

end


# p rotate([1, 2, 3, 4], 1)
# p rotate([1, 2], 2)
# p rotate([4, 5, 6, 7], 3)


# 4
#   Write a method, #all_uniqs(array1, array2) that, given two arrays, produces a new array of only elements unique to array1 and elements unique to array2.
#   Don't worry about the order of the elements in the output array.
#   all_uniqs([1, 2, 3], [1, 2, 4]) # ==> [3, 4]
#   all_uniqs([1, 2, 7], [1, 3, 8]) # ==> [2, 7, 3, 8]

def all_uniqs(array1, array2)
  unique_elements =[]
  array1.each {  |elmnt|
    unless array2.include? (elmnt)
      unique_elements << elmnt
    end
  }
  array2.each {  |elmnt|
    unless array1.include? (elmnt)
      unique_elements << elmnt
    end
  }
  unique_elements
end


# p all_uniqs([1, 2, 7], [1, 3, 8])
p all_uniqs([1, 2, 3], [1, 2, 4])
