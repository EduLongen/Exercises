# Given a phrase, count the occurrences of each word in that phrase.
# 
# For the purposes of this exercise you can expect that a word will always be one of:
# 
# A number composed of one or more ASCII digits (ie "0" or "1234") OR
# A simple word composed of one or more ASCII letters (ie "a" or "they") OR
# A contraction of two simple words joined by a single apostrophe (ie "it's" or "they're")
# When counting words you can assume the following rules:
# 
# The count is case insensitive (ie "You", "you", and "YOU" are 3 uses of the same word)
# The count is unordered; the tests will ignore how words and counts are ordered
# Other than the apostrophe in a contraction all forms of punctuation are ignored
# The words can be separated by any form of whitespace (ie "\t", "\n", " ")

class Phrase

    attr_reader :phrase
    
    def initialize(phrase)
        @phrase = phrase
    end
  
    def word_count
        @phrase.downcase.scan(/\b[\w']+\b/).
            each_with_object(Hash.new(0)) do |word, hash|
                hash[word] += 1
        end
    end
end