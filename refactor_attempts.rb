# def super_fizzbuzz(array)
#   array.map! { |element|
#    if(element % 3 == 0 && element % 5 == 0)
#     "FizzBuzz" 
#    elsif(element % 3 == 0)
#     "Fizz"
#    elsif (element % 5 == 0)
#     "Buzz"
#    else
#        element
#    end
# }
#   return array
# end

# p super_fizzbuzz([15, 18, 20])

# codesmithed to perfection

def super_fizzbuzz(array)
  array.map! do |element|
   if(element % 3 == 0 && element % 5 == 0)
    "FizzBuzz" 
   elsif (element % 3 == 0)
    "Fizz"
   elsif (element % 5 == 0)
    "Buzz"
   else
       element
   end
 end
  return array
end

p super_fizzbuzz([15, 18, 20])



# # 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

# def assert
#  raise "The Assertion has Failed" unless yield
# end

# assert {super_fizzbuzz([1,2,3]) == [1,2,'Fizz']}

# assert {super_fizzbuzz([15, 18, 20]) == ['FizzBuzz', 'Fizz', 'Buzz']}







#  def fizzbuzz(number)
#     divisibleBy3 = (number % 3 == 0)
#     divisibleBy5 = (number % 5 == 0)

#     case
#         when divisibleBy3 && divisibleBy5
#             puts "FizzBuzz"
#         when divisibleBy3
#             puts "Fizz"
#         when divisibleBy5
#             puts "Buzz"
#         else 
#             puts number
#     end
# end

# (1..100).each {|n| fizzbuzz n}