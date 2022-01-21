# In this exercise you'll be writing code to analyze the production of an assembly line in a car factory. 
# The assembly line's speed can range from 0 (off) to 10 (maximum).
# 
# At its slowest speed (1), 221 cars are produced each hour. The production increases linearly with the speed. 
# So with the speed set to 4, it should produce 4 * 221 = 884 cars per hour. 
# However, higher speeds increase the likelihood that faulty cars are produced, which then have to be discarded. 
# The following table shows how speed influences the success rate:
# 
# 1 to 4: 100% success rate.
# 5 to 8: 90% success rate.
# 9: 80% success rate.
# 10: 77% success rate.
# 
# You have two tasks.
# 
# 1. Calculate the production rate per hour
# 2. Calculate the number of working items produced per minute

class AssemblyLine

    PRODUCTION_PER_HOUR = 221

    def initialize(speed)
      @speed = speed
    end

    def production_rate_per_hour
      total = @speed * PRODUCTION_PER_HOUR
      success_rate = case @speed
        when 1..4 then 1.0
        when 5..8 then 0.9
        when 9 then 0.8
        when 10 then 0.77
      end
      total * success_rate
    end

    def working_items_per_minute
      (production_rate_per_hour / 60).floor()
    end
end