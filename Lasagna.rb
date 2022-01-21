# In this exercise you're going to write some code to help you cook a brilliant lasagna from your favorite cooking book.
# You have four tasks, all related to the time spent cooking the lasagna.
# 1. Define the expected oven time in minutes
# 2. Calculate the remaining oven time in minutes
# 3. Calculate the preparation time in minutes

class Lasagna

    EXPECTED_MINUTES_IN_OVEN = 40
    MINUTES_BY_LAYER = 2

    def remaining_minutes_in_oven(actual_minutes_in_oven)
        EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
    end

    def preparation_time_in_minutes(layers)
        MINUTES_BY_LAYER * layers
    end

    def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
        preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
    end
end