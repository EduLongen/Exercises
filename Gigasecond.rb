# Given a moment, determine the moment that would be after a gigasecond has passed.
# A gigasecond is 10^9 (1,000,000,000) seconds.

class Gigasecond

    GIGASECOND = 10**9
  
    def self.from(t_now)
        t_now + GIGASECOND
    end
end