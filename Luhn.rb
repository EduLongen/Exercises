# Given a number determine whether or not it is valid per the Luhn formula.

# The Luhn algorithm is a simple checksum formula used to validate a variety of identification numbers, such as credit card numbers and Canadian Social Insurance Numbers.

# The task is to check if a given string is valid.

class Luhn

    def self.valid?(string)
        string = string.delete(" ")
            .tap { |str| return false unless str[/\A\d\d+\z/] }
            .chars.reverse.map.with_index { |num, i| i.odd? ? num.to_i * 2 : num.to_i }
            .map { |num| num > 9 ? num - 9 : num }
            .sum % 10 == 0
    end
end