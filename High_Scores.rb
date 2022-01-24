# Manage a game player's High Score list.
# Your task is to build a high-score component of the classic Frogger game, one of the highest selling and addictive games of all time, and a classic of the arcade era. 
# Your task is to write methods that return the highest score from the list, the last added score and the three highest scores.

class HighScores

    attr_reader :scores
  
    def initialize(scores)
        @scores = scores
    end
  
    def personal_best
        scores.max
    end
  
    def latest
        scores.last
    end
  
    def personal_top_three
        scores.max(3)
    end
  
    def latest_is_personal_best?
        scores.max == scores.last
    end
end