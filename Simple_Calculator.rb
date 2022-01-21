# In this exercise you will be building error handling for a simple calculator.
# 
# The goal is to have a working calculator that returns a string with the following pattern: 16 + 51 = 67, when provided with arguments 16, 51 and +.
# 
# 1. Handle the code that may raise errors within the method calculate
# 2. Handle illegal operations
# 3. Handle invalid arguments
# 4. Handle DivideByZero exceptions

class SimpleCalculator
  
    ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
        
    class UnsupportedOperation < StandardError
    end
        
    def self.calculate(first_operand, second_operand, operation)
        begin
            unless !ALLOWED_OPERATIONS.include?(operation) 
                "#{first_operand} #{operation} #{second_operand} = #{first_operand.method(operation).call(second_operand)}"
            else 
                raise SimpleCalculator::UnsupportedOperation
            end
        rescue ZeroDivisionError
            return "Division by zero is not allowed."
        rescue TypeError
            raise ArgumentError.new("Something went wrong!")
        end
    end
end