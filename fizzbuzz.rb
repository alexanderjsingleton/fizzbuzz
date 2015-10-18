# class FizzBuzz
#   def initialize(0..100)
#     #number picked from range
#     #number_selected
#   end

#   def divisble_by_3
#     if number_selected %= 3
#       # puts fizz
#     else false
#     end
    
#   end


#   def divisble_by_5
#     if number_selected %= 5
#       # puts buzz
#     else false
#     end
    
#   end

#   def divisible_by_3_and_5
#     if number_selected %= 3 && 5
#       # puts fizzbuzz
#     else false
#     end

#   end


# end

# run_1 = FizzBuzz.new()

 def fizzbuzz(number)
    divisibleBy3 = (number % 3 == 0)
    divisibleBy5 = (number % 5 == 0)

    case
        when divisibleBy3 && divisibleBy5
            puts "FizzBuzz"
        when divisibleBy3
            puts "Fizz"
        when divisibleBy5
            puts "Buzz"
        else 
            puts number
    end
end

(1..100).each {|n| fizzbuzz n}
