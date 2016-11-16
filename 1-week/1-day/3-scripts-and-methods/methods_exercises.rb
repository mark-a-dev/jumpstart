# Methods Exercises

#print_thrice

def print_thrice(string)
  for i in 0..2
    puts string
  end
end

#print_thrice_thrice
def print_thrice_thrice(string)
  # for i in 0..2
  #   print_thrice(string)
  # end

  3.times do
    print_thrice(string)
  end
end

# print_thrice_thrice("hello")

#add_multiply_subtract

def add_multiply_subtract (num1, num2)
  sum = num1 + num2
  diff = num1 - num2
  product = num1 * num2

  sub_sum_from_product = product - sum

  puts "#{num1} plus #{num2} is #{sum}"
  puts "#{num1} minus #{num2} is #{diff}"
  puts "#{num1} times #{num2} is #{product}"

  puts "The difference between their product and sum is #{sub_sum_from_product}"
end

add_multiply_subtract(10, 5)
