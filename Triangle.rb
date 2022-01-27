# Determine if a triangle is equilateral, isosceles, or scalene.
#     An equilateral triangle has all three sides the same length.
#     An isosceles triangle has at least two sides the same length. (It is sometimes specified as having exactly two sides the same length, but for the purposes of this exercise we'll say at least two.)
#     A scalene triangle has all sides of different lengths.

class Triangle
  
    def initialize (sides)
        @sides = sides
    end
    
    def sides
        @sides.max < @sides.min(2).reduce(:+) && !(@sides.include?(0)) ? @sides : []
    end
    
    def equilateral?
        sides.uniq.length == 1 ? true : false
    end
   
    def isosceles?
        sides.uniq.length.between?(1,2) ? true : false
    end
    
    def scalene?
        sides.uniq.length == 3 ? true : false
    end
end