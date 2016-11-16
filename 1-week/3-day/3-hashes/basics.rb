old_syntax = {:a => 'value'}

new_syntax = { name: "bob"}

dictionary ={
  "apple" => "a delicious fruit",
  "cat"   => "a cute animal"

}
# puts new_syntax[:name]


# puts dictionary.keys
# puts dictionary.values
# puts dictionary.length

puts "key for new_syntax: " + new_syntax.include?(:name).to_s
puts dictionary.include?("apple")
