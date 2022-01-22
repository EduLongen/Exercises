# In this exercise you will build out rules for a movie theater's website.
# 1. Check if a moviegoer is entitled to the seniors' discount
# 2. Check if a moviegoer is allowed to see scary movies
# 3. Check if a moviegoer is entitled to free popcorn

# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  
    attr_reader :age, :member

    def initialize(age, member: false)
        @age = age
        @member = member
    end
    
    def ticket_price
        @age >= 60 ? 10 : 15
    end
    
    def watch_scary_movie?
        @age < 18 ? false : true
    end
    
    # Popcorn is 🍿
    def claim_free_popcorn!
        if @member == true
            "🍿"
        else
            raise NotMovieClubMemberError
        end
    end
end