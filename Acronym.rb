# Convert a phrase to its acronym.
# Techies love their TLA (Three Letter Acronyms)!
# Help generate some jargon by writing a program that converts a long name like Portable Network Graphics to its acronym (PNG).

module Acronym

    extend self

    def abbreviate(phrase)
        phrase.scan(/\b\w/).join.upcase
    end
end