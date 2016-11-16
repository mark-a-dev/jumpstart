# 1
# Write a method, #word_lengths(string) that, given a sentence, returns a hash of each of the words and their lengths.
#   word_lengths("hello my good good pal") =
#     { 'hello' => 5, 'my' => 2, 'good' => 4, 'pal' => 3 }

def word_lengths(sentence)
  sentence_words = Hash.new

  words_length = sentence.split.each { |word|
    sentence_words.store(word, word.length)
  }

  sentence_words
end

# p word_lengths("hello my good good pal")






# 2
# Write a method, #uniq(array) that returns an array with only the unique values in the array.
# (Hint: use a hash!) Don't use the Array#uniq method here.
#   uniq([1, 1, 2, 3])          # ==> [2, 3]
#   uniq([1, 3, 4, 3, 2, 5, 4]) # ==> [1, 2, 5]

def uniq(array)
  # puts array
  number_uniques = Hash.new

  array.each { |num|
    unique = !number_uniques.has_key?(num)

    number_uniques.store(num, unique)
  }


  number_uniques.each_pair { |key, value|
    # puts number_uniques
    puts key
    puts value
    # puts number_uniques[key]
    # puts number_uniques
    unique = value
    puts "unique: " + unique.to_s

    if unique == false
      number_uniques.delete(key)
    end

    puts "number_uniquesis now.."
    p number_uniques
  }



  puts number_uniques
  # p number_uniques
  p number_uniques.keys.to_a


end


uniq([1, 1, 2, 3])
uniq([1, 3, 4, 3, 2, 5, 4])

# 3
# Write a method, #greatest_key_by_val(hash) that takes in a hash with any keys but only integers for values, and returns the key with the largest value.
#   greatest_key_by_val({ "a" => 5, "b" => 6, "c" => 3 }) # ==> "b"
