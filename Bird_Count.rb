# Instructions
# You're an avid bird watcher that keeps track of how many birds have visited your garden in the last seven days.
# 
# You have five tasks, all dealing with the numbers of birds that visited your garden.
# 
# 1. Check what the counts were last week
# 2. Check how many birds visited yesterday
# 3. Calculate the total number of visiting birds
# 4. Calculate the number of busy days
# 5. Check if there was a day with no visiting birds

class BirdCount
  
    def self.last_week
        [0, 2, 5, 3, 7, 8, 4]
    end
  
    def initialize(birds_per_day)
        @birds_per_day = birds_per_day
    end
  
    def yesterday
        @birds_per_day[-2]
    end
    
    def total
        @birds_per_day.sum
    end
    
    def busy_days
        @birds_per_day.count { |count| count >= 5 }
    end
    
    def day_without_birds?
        @birds_per_day.any? { |count| count == 0 }
    end
end