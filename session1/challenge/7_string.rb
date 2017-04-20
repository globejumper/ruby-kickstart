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
    string.length.times {|x| next_char << string[x+1] if string[x].downcase == "r"}
    next_char.join
  else
    ""
  end
end
