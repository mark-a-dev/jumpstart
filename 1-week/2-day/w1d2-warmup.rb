# Puts While/Each
# ----------------------------------------
# Write a method, #puts_while, that accepts an array as an argument and will puts
# every element in the array. Do this using a while loop.

require "pry"

vowels =["a", "e","i","o","u"]

def puts_while (array)
  i = 0
  while i < (array.length)
    puts array[i]
    i+=1
  end
end

puts puts_while(vowels)


# Write a method, #puts_each, that accepts an array as an argument and will puts
# every element in the array. Do this using Array's #each method

def puts_each (array)
  # binding.pry
    array.each { |i|
      puts i
    }


end

# puts_each(vowels)


# ----------------- Switch Roles!



# Present Pet
# ----------------------------------------
# Write a method, #present_pet, that takes two arguments:
# a pet name and an animal type, both strings. It should return a string
# that announces the pet (e.g. if given "Todd" and "turtle", it
# should return "Todd the turtle has arrived.").

def present_pet(pet_name, animal)

  "#{pet_name} the #{animal} has arrived."
end

puts "---------Present Pet----------"
puts present_pet("Sam", "salamander") == "Sam the salamander has arrived."
puts present_pet("Roger", "rabbit") == "Roger the rabbit has arrived."
puts present_pet("Catie", "canary") == "Catie the canary has arrived."


# ----------------- Read the solutions!
