# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

# 1. find even indices in the string and put them in an array
# 2. Print out the array joined
#
#
class String
  def every_other_char
    arr = []
    for i in 0..self.length-1 do
      arr.push(self[i]) if i.even?

    end
    arr.join()
  end
end

puts "abcdefg".every_other_char
