# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"


# find character "r"
# find out the position of character "r" in the string
# set the position of character "r" to a variable "l"
# return the character next to "r" which is "l + 1"

def pirates_say_arrrrrrrrr(string)
  next_char = []
  if string.include?("r" || "R")

    for x in 0..string.length-1
      if string[x].downcase == "r"
        l = x+1
        next_char << string[l]
      end


    end

    return next_char.join
  else
    return ""
  end
end

puts pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"
# puts puts pirates_say_arrrrrrrrr("hello")
