# An anagram is a rearrangement of letters to form a new word. Given a word and a list of candidates, select the sublist of anagrams of the given word.

# Given "listen" and a list of candidates like "enlists" "google" "inlets" "banana" the program should return a list containing "inlets".

class Anagram
  
    def initialize(subject)
        @subject = subject
        @chars = chars(subject)
    end
    
    def match(word)
        word.select { |i| anagram?(i) }
    end
    
    def anagram?(candidate)
        distinct?(candidate) && same_chars?(candidate)
    end
    
    def distinct?(candidate)
        candidate.casecmp(@subject) != 0
    end
    
    def same_chars?(candidate)
        chars(candidate) == @chars
    end
    
    def chars(i)
        i.downcase.chars.sort
    end
end