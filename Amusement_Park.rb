# Working with an amusement park, you've been handed a specification to design a system to administer attendance and rides. 
# You've been tasked with modeling the Attendee (person visiting the park).
# 1. Make new attendees
# 2. How tall is the attendee
# 3. What is the ride pass id

class Attendee
    
    attr_reader :height, :pass_id
    
    def initialize(height)
      @height = height
      revoke_pass!
    end
    
    def issue_pass!(pass_id)
      @pass_id = pass_id
    end
    
    def revoke_pass!
      @pass_id = nil
    end
end