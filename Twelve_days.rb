# Output the lyrics to 'The Twelve Days of Christmas'.

class TwelveDays
  
    def self.preamble(i)
        n = %w{first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth}
        "On the #{n[i]} day of Christmas my true love gave to me: "
    end
  
    def self.body
        [
            "a Partridge in a Pear Tree.\n", "two Turtle Doves, and ", "three French Hens, ",
            "four Calling Birds, ", "five Gold Rings, ", "six Geese-a-Laying, ",
            "seven Swans-a-Swimming, ", "eight Maids-a-Milking, ", "nine Ladies Dancing, ",
            "ten Lords-a-Leaping, ", "eleven Pipers Piping, ", "twelve Drummers Drumming, "
        ]
    end
  
    def self.song
        a = (0..11).map do |n|
            self.preamble(n) + self.body.slice(0..n).reverse.join
        end.join("\n")
    end
end