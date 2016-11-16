# Visit the official documentation for using Ruby Strings. Get very familiar with this page -- you'll be visiting it frequently! Use the examples and explanations on this page to help you do the next step.

# Open pry. Create some strings and try each of the following methods:
#length
#upcase
#downcase
#delete
#count
#gsub
#start_with?
#reverse

# Write a method #capitalize that accepts a string as an argument and capitalizes the first letter of the string.
# Note: Do not use the built in method String#capitalize
 # capitalize("yahoo!") == "Yahoo!"
def capitalize(string)
  newString = ""
  newString += string.slice(0).upcase
  if string.length > 1
    newString += string.slice(1..string.length-1)
  end

end

# puts capitalize("asdfasdfasdfark")


# Write a method, #shout_then_whisper that takes in two strings, and shouts the first part, then whispers the second part.
# The output should look like this:
# shout_then_whisper("Hello", "McDouglas") == "HELLO!! ... mcdouglas"

def shout_then_whisper(string1, string2)
  shout_this = string1.upcase
  whisper_this = string2.downcase
  return phrase = "#{shout_this}!! ... #{whisper_this}"
end

puts shout_then_whisper("Hello", "McDouglas")

# Write a method, #how_long? that accepts a string as an argument.
# Your method should return a new string in the format:
# how_long?("I am a sentence :)") == "Your string is 18 characters long"


def how_long?(string)
  "Your string is #{string.length} characters long"
end

puts how_long?("I am a sentence :)")

# Write a method, #hyphenify that accepts a string as an argument.
# Your method should remove all the spaces and replace them with hyphens.
# hyphenify("I am a sentence!") == "I-am-a-sentence!"

def hyphenify(string)
  new_string =""
  string.each_char do |char|
    if char == " "
      new_string += "-"
    else
      new_string += char
    end
  end
  new_string
end

puts hyphenify("I am a sentence!")
