# Define a method, #remove_vowels, that accepts a string as an argument. This method should
# return a new string with all the vowels removed from the old string

def remove_vowels(string)
  # your code here
  vowelless_string = ""
  vowels = ["a","e","i","o","u"]

  string.each_char do |char|
    unless vowels.include?(char)
      vowelless_string += char
    end
  end
  puts vowelless_string
  return vowelless_string

end


puts "------Remove Vowels------"
puts remove_vowels("abcde") == "bcd"
puts remove_vowels("icy") == "cy"
puts remove_vowels("voul") == "vl"
