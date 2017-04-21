# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

# take character and compare it to next one,
# if they are equal, increase counter by 1
# if counter reaches 3, return true, else false

def got_three?(array)
  array.length.times { |x| return true if array[x] == array[x+1] && array[x+1] == array[x+2] }
  return false
end

# puts got_three? [1, 2, 2, 2, 3]  # => true
