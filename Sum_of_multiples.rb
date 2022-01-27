# Given a number, find the sum of all the unique multiples of particular numbers up to but not including that number.
# If we list all the natural numbers below 20 that are multiples of 3 or 5, we get 3, 5, 6, 9, 10, 12, 15, and 18.
# The sum of these multiples is 78.

class SumOfMultiples

    attr_reader :multiples
    
    def initialize(*multiples)
        @multiples = multiples
    end
  
    def to(max)
        uniq_multiples = 1.upto( max - 1 ).select { |num| is_multiple? num }
        uniq_multiples.inject(0) { |sum, num| sum += num }
    end
  
    def is_multiple?(number)
        multiples.select { |i| (number % i == 0) }.any?
    end
end 