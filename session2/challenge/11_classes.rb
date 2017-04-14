# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
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
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.


class BeerSong

attr_accessor :num

  def initialize(num)
  	@num = 0 if num < 0
  	@num = 99 if num > 99
  	@num = num
  end

  def bottle(num)
    num == 1 ? "bottle" : "bottles"
  end


  def stanza(num)
    puts "#{converter(num)} #{bottle(num)} of beer on the wall,",
         "#{converter(num)} #{bottle(num)} of beer,",
         "Take one down, pass it around,",
         "#{converter(num-1)} #{bottle(num-1)} of beer on the wall."
  end


  def print_song(num)
	return "" if num == 0 
    while num > 0
      puts stanza(num)
      num -= 1
    end
  end


  def converter(num) #To convert integers into alphabetical counterpart 
  	if num <= 19
  	   %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[num]
    elsif num % 10 == 0
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[num/10]
    else
      "#{converter num/10 * 10}-#{converter num%10}"
    end.capitalize
  end
  
end