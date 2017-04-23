# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}


def word_count(string)
  hash = {}
  array = string.downcase.split
  for x in array
    number_of_instances = array.count(x)
    hash[x] = number_of_instances
  end
  hash
end
str = "The quick brown fox jumps over the lazy doggo because the quick brown fox is so very quick and shifty you know"
puts word_count(str)
