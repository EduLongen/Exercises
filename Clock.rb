# Implement a clock that handles times without dates.
# You should be able to add and subtract minutes to it.
# Two clocks that represent the same time should be equal to each other.

class Clock

    attr_reader :hour, :minute
    
    def initialize(hour: 0, minute: 0)
        @hour = (hour + minute / 60) % 24
        @minute = minute % 60
    end
  
    def to_s
        "%02d:%02d" % [hour, minute]
    end
    
    def +(clock)
        hour = self.hour + clock.hour
        minute = self.minute + clock.minute
        Clock.new(hour: hour, minute: minute)
    end
  
    def -(clock)
        hour = self.hour - clock.hour
        minute = self.minute - clock.minute
        Clock.new(hour: hour, minute: minute)
    end
  
    def ==(clock)
        clock.hour == hour && clock.minute == minute
    end
end