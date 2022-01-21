# In this exercise you will be working with savings accounts. 
# Each year, the balance of a savings account is updated based on the interest rate. 
# The interest rate the bank gives depends on the amount of money in the accounts (its balance):
# 
# -3.213% for a negative balance.
# 0.5% for a non-negative balance less than 1000 dollars.
# 1.621% for a positive balance greater or equal than 1000 dollars and less than 5000 dollars.
# 2.475% for a positive balance greater or equal than 5000 dollars.
# 
# You have three tasks, each of which will deal with the balance and its interest rate.
# 
# 1. Calculate the interest rate
# 2. Calculate the annual balance update
# 3. Calculate the years before reaching the desired balance

module SavingsAccount

    def self.interest_rate(balance)
        case
            when balance < 0
                -3.213
            when balance < 1000.0
                0.5
            when balance < 5000.0
                1.621
            else 2.475
        end
    end

    def self.annual_balance_update(balance)
        balance + (balance * interest_rate(balance).abs) * 0.01
    end

    def self.years_before_desired_balance(current_balance, desired_balance)
        years = 0
        while current_balance < desired_balance
            current_balance = annual_balance_update(current_balance)
            years += 1
        end
        years
    end
end