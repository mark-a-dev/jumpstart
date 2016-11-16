# Vowel Censor
# ----------------------------------------
# Write a method, #vowel_censor that takes in a string and replaces
# any vowels in it with an "X". Do not modify the original string.

def vowel_censor(string)
    vowels=["a","e","i","o","u"]
    new_string=""
    string.each_char do |char|
        if vowels.include? char
            new_string << "X"
        else
            new_string << char
        end

        # while i<=string.length
        #     if char==string[i]
        #       new_string+="X"
        #       added = true
        #     else
        #       new_string+=char
        #     end
        #   i+=1
        # end
    end
    puts new_string
    return new_string
end

puts "---------Vowel Censor----------"
puts vowel_censor("Let's order a pizza") == "LXt's XrdXr X pXzzX"
puts vowel_censor("Nitwit, blubber, oddment, tweak") == "NXtwXt, blXbbXr, XddmXnt, twXXk"
puts vowel_censor("Supercalifragilisticexpialidocious") == "SXpXrcXlXfrXgXlXstXcXxpXXlXdXcXXXs"



# ----------------- Switch Roles!





# Print 10
# ----------------------------------------
# Write a method, #array_print_10, that puts the numbers 0 - 9 using an array
# and the each method

def array_print_10
end

# Write a method, #range_print_10, that prints the numbers 0 - 9 using a range
# and the each method

def range_print_10
end

# Write a method, #integer_print_10, that prints the numbers 0 - 9 using an integer
# and the times method

def integer_print_10
end


# ----------------- Read the solutions!
