# Given a string of digits, output all the contiguous substrings of length n in that string in the order that they appear.
# For example, the string "49142" has the following 3-digit series:
# "491"
# "914"
# "142"
# And the following 4-digit series:
# "4914"
# "9142"

class Series
  
    def initialize(string)
        @string = string
    end
  
    def slices(n)
        raise ArgumentError unless n <= @string.length
        @string.chars.each_cons(n).map(&:join)
    end
end