# Given an age in seconds, calculate how old someone would be on:
 
# Mercury: orbital period 0.2408467 Earth years
# Venus: orbital period 0.61519726 Earth years
# Earth: orbital period 1.0 Earth years, 365.25 Earth days, or 31557600 seconds
# Mars: orbital period 1.8808158 Earth years
# Jupiter: orbital period 11.862615 Earth years
# Saturn: orbital period 29.447498 Earth years
# Uranus: orbital period 84.016846 Earth years
# Neptune: orbital period 164.79132 Earth years

# So if you were told someone were 1,000,000,000 seconds old, you should be able to say that they're 31.69 Earth-years old.

class SpaceAge

    attr_reader :seconds
  
    EARTH_ORBIT_SECONDS = 60 * 60 * 24 * 365.25
    ORBIT_SECONDS = 
    {
        earth: EARTH_ORBIT_SECONDS,
        mercury: EARTH_ORBIT_SECONDS * 0.2408467,
        venus: EARTH_ORBIT_SECONDS * 0.61519726,
        mars: EARTH_ORBIT_SECONDS * 1.8808158,
        jupiter: EARTH_ORBIT_SECONDS * 11.862615,
        saturn: EARTH_ORBIT_SECONDS * 29.447498,
        uranus: EARTH_ORBIT_SECONDS * 84.016846,
        neptune: EARTH_ORBIT_SECONDS * 164.79132
    }
    
    def initialize(seconds)
        @seconds = seconds
    end
  
    ORBIT_SECONDS.each do |planet, orbit_period|
        define_method("on_#{planet}") { seconds / orbit_period }
    end
end