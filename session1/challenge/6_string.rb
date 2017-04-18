# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  n = string.length
  odd_string = []
  even_string = []
  if return_odds == true
    n.times {|x| odd_string.push(string[x]) if x %2 !=0}

    return odd_string.join
  else
    n.times {|x| even_string.push(string[x]) if x %2 ==0}
    return even_string.join
  end
end

puts odds_and_evens("abcdefg",true)    # => "bdf"
puts odds_and_evens("abcdefg",false)   # => "aceg"
