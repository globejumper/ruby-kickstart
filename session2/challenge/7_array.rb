# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
#
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

# divide string into words , put words into an indexed array and take every odd element of the array



def alternate_words(string)
  "!@$#%^&*()-=_+[]:;,./<>?\\|".split(//).each {|x| string = string.gsub(x, " ")}
  to_return = []
  words = string.split(" ")
  for x in (0...words.length).to_a do
    to_return << words[x] if x.even?
  end
  to_return
end
