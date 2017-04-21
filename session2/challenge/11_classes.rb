# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the num of bottles in English, not as a num. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the num of bottles of beer initially on the wall.
# If the parameter is less than zero, set the num of bottles to zero. Similarly,
# if the parameter is greater than 99, set the num of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the num of bottles of beer down to zero.
# Add any additional methods you find helpful.
class BeerSong
  attr_accessor :beers

  def initialize(beers)
    beers = 99 if beers > 99
    beers = 0  if beers < 0
    self.beers = beers
  end

  def print_song
    beers.downto 1 { |s| print_section(s) }
  end

  def print_section(num)
    puts  "" if num == 0
    puts  "#{num_to_e(num)} #{bottles(num)} of beer on the wall,"
    puts  "#{num_to_e(num)} #{bottles(num)} of beer,"
    puts  "Take one down, pass it around,"
    puts  "#{num_to_e(num - 1)} #{bottles(num - 1)} of beer on the wall."
  end

  def bottles(num)
    num == 1 ? "bottle" : "bottles"
  end

  def num_to_e(num)
    if 0 <= num && num < 20
      upto_20 = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
      upto_20[num].capitalize
    elsif num % 10 == 0
      mul_of_10 = ["null", "null", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
      mul_of_10[num/10].capitalize
    else
      other_nums = "#{num_to_e(num/10*10)}-#{num_to_e(num%10)}"
      other_nums.capitalize
    end
  end



end
BeerSong.new(99).print_song
