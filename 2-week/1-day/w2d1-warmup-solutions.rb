# Muni Routes
# ----------------------------------------
# You are at a busy intersection and need to get to brunch ASAP. There
# are multiple Muni buses that go by, but you don't know which to take.
# Given a hash of routes that pass through (with route number as the key
# and next stop on the route as the value) and a destination stop, return
# the number of the first route in the hash that could get you to your
# brunch spot in only one spot, if it exists. Otherwise, return nil.

def muni_routes(routes, destination)
  routes.each do |route_number, stop|
    return route_number if stop == destination
  end
  nil
end

## Discussion topics:
#   * Why does the #each method for hashes accept a code block with two arguments?
#     * How does this compare with the #each method in arrays
#   * What will the implicit return value of #muni_routes be if we get rid of
#     the nil on line 14?



# -----------------



# Largest Factor
# ----------------------------------------
# Write a method, #largest_factor, that accepts an integer as an argument and returns
# the largest factor of that integer

def largest_factor(n)
  (n - 1).downto(1) do |possible_factor|
    return possible_factor if n % possible_factor == 0
  end
end

## Discussion topics:
#   * Why do we start at (n - 1) instead of n?
#   * What does the downto method do?
#   * How does the modulo operator ( % ) help us determine factors?
