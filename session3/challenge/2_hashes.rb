# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(int)
  stairhash = {}

  if int < 0
    return false
  else
    for x in (1..int) do
      if x.odd?
        array = []
        for n in (1..x) do
          array << n if n.even?
        end
        stairhash[x] = array
      end

    end
  end
  stairhash
end
# puts staircase(5)
