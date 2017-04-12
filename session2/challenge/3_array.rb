# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
	return '' if self.size == 0
    self.split("").map.with_index {|x,i| i.even? ? x : ''}.join
  end
end
