# Calculate the Hamming Distance between two DNA strands.

class Hamming

    def self.compute(str1, str2)
        raise ArgumentError if str1.length != str2.length
        (0...str1.length).count do |length|
            str1[length] != str2[length]
        end
    end
end