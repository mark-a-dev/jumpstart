# Instructions
# Make sure everything puts out as 'true' when you run the file.
# When time is up, make sure you don't have any unexpected `end`s or infinite loops
# that would keep your code from running.
# Rename the file to be your firstname and lastname.
#
# Do not use the internet.  Do not reference the exercises.  If you forget a
# particular ruby method, write it yourself.
#
# Do not change the parameters passed into the functions in this file.
#
# Test your code with a few cases in addition to the ones we give
# you.  When we grade you, we use different test cases to make sure your logic
# is sound.
#
# Use the debugger when code doesn't run how you expect.
# Long Word Count
# Return the number of words longer than 7 characters
# "cat cactus balderdash phenomenon amazon" has two words over 7 characters long
# "balderdash" and "phenomenon"
# long_word_count("cat cactus balderdash phenomenon amazon") => 2
def long_word_count(text)
  biggest_words = []
  biggest_length = 7
  words = text.split(" ")
  # puts words
  i = 0
  while i < words.length

    # puts i
    # puts words[i]
    if words[i].length > biggest_length
      biggest_words << words[i]
    end
    i+=1
  end
  # puts biggest_words

  biggest_words.length

end

# puts "-------Long Word Count-------"
# puts long_word_count("") == 0
# puts long_word_count("short words only") == 0
# puts long_word_count("one reallylong word") == 1
# puts long_word_count("two reallylong words inthisstring") == 2

# Range Summary
# Given a sorted array of integers without duplicates, return the start and end
# integers of number ranges found in the array. A number range is considered valid
# when all numbers from start to end are contiguous and only increment by 1.
# Assume all numbers are included as part of a range (no stand alone elements).

require("pry")
def range_summary(array)
  ranges =[]

  i = 0

  ranges_to_add = []


  while i <= array.length-2

    puts array[i]

    j = 0
    puts array[j]
    while j <= array.length-1
      first =  array[i]
      # puts first
      second = array[j]
      # puts second

      if (first+1) == second

        # puts ranges_to_add
        ranges_to_add << [first, second]
        # puts ranges_to_add


      end
      j+=1
    end
    i+=1

  end

  # p ranges_to_add
  ranges << ranges_to_add
  p ranges

end

# puts "-------Range Summary-------"
# puts range_summary([0, 1]) == [[0, 1]]
# puts range_summary([0, 1, 4, 5]) == [[0, 1], [4, 5]]
# puts range_summary([0, 1, 3, 4, 6, 7]) == [[0, 1], [3, 4], [6, 7]]
# puts range_summary([0, 1, 2, 3, 4, 5, 7, 8, 9, 15, 16]) == [[0, 5], [7, 9], [15, 16]]

# Hashtagify
# Given a sentence string and an array of words, hashtag-ify the words (case-insensitive)
# in the original string and return the updated cool string with hashtags.

def hashtagify(sentence, tags)
  words = sentence.split(" ")

  new_sentence = ""

  words.each { |word|
    # puts "xurrent word: "+word.to_s
    added = false
    i= 0
    while i < tags.length
      to_add = ""

      # puts i

      # p tags[i]
      # puts new_sentence

      if  word.downcase.delete(".,!") == tags[i]
        # puts "adding #"
        to_add += "#"
        to_add += word
        to_add += " "
        added = true


      elsif added == false && i == tags.length-1
        # puts "adding word and space"
        to_add = word + " "

      end

      # puts "phrase is.. #{to_add}"
      new_sentence += to_add
      # puts new_sentence

      i+=1

    end

  }
  puts new_sentence.to_s
  return new_sentence
end
#
# puts "-------Hashtagify-------"
# puts hashtagify("coding", ["coding"]) == "#coding"
# puts hashtagify("coding is fun", ["coding", "fun"]) == "#coding is #fun"
# puts hashtagify("Learned about coding. Coding is fun!", ["coding", "fun"]) == "Learned about #coding. #Coding is #fun!"

# Vigenere Cipher
# Vigenere's Cipher is a tool for encrypting strings. We'll offset each character
# according to a key sequence. For example, if we encrypt "bananasinpajamas" with the
# key sequence [1, 2, 3], the result would be "ccqbpdtkqqcmbodt":
#
# Word:   b a n a n a s i n p a j a m a s
# Keys:   1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1
# Cipher: c c q b p d t k q q c m b o d t
#
# Note that offsets should wrap around the alphabet - offsetting 'z' by 1 should
# produce 'a'

# Write a method that takes a string and a key-sequence, returning
# the encrypted word. Assume only lower-case letters are used.

# We're giving you the alphabet as an array if you need it.

def vigenere_cipher(string, key_sequence)
  puts key_sequence
  alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  new_cipher = alphabet.map.with_index { |letter, index|
    puts letter
    if alphabet.last == letter
      alphabet[0]
    else
      alphabet[index+1]
    end
  }

  puts new_cipher
  p new_cipher
end

# puts "----Vigenere cipher----"
# puts vigenere_cipher("toerrishuman", [1]) == "upfssjtivnbo"
# puts vigenere_cipher("toerrishuman", [1, 2]) == "uqftsktjvobp"
puts vigenere_cipher("toarrispirate", [1, 2, 3, 4]) == "uqdvskvtjtdxf"
# puts vigenere_cipher("zzz", [1, 2, 1]) === "aba"
