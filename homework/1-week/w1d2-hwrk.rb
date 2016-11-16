# Two-Sum

# Define a method, #two_sum, that accepts an array and a target sum (integer) as arguments.
# The method should return true if any two integers in the array sum to the target.
# Otherwise, it should return false. Assume the array will only contain integers.

def two_sum(array, target)
  # Mark's code here
  # puts "array: " +array
  # puts "target sum: " + target.to_s
  sum = 0
  i = 0
  while i < (array.length-1)

    # puts "i: " + i.to_s
    int1 = array[i]
    # puts "int1: " + int1.to_s
    j = i+1
    # puts "j: " + j.to_s
    while j < (array.length)
      # puts "j: "+ j.to_s


        int2 = array[j]
        # puts "int2: " +int2.to_s
        sum = int1 + int2
        # puts "sum: " + sum.to_s
        if sum == target

          return true

        end #end of if statement


      j+=1
    end #end of nested while loop

    i+=1
  end #end of first while loop

end #end of method



puts "------Two Sum------"
puts two_sum([1,2,3,4,5,6], 8) == true
puts two_sum([1,2,3,4,5,6], 18) == false
puts two_sum([1,3,6], 6) == false
puts two_sum([1,8,2,1], 0) == false
