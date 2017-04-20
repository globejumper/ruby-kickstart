# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares


# 1. Define the methodet_squares that takes in an array
# 2. Check each value X against all other values in the array looking for
#    values where value = X * X store value in array
# 3. return array
def get_squares(arr)
  results = []
  arr.each {|x| results << x if arr.include?(x*x)}
  results.sort
end
