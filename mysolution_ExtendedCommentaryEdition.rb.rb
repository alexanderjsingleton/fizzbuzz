 # define method 'fizzbuzz' initialized by single-variable argument 'number'
 def fizzbuzz(number)
 # define local method 'divisibleby3' defining a function checking divisibility of initialized by single-variable 'number'
 # using the modulus and case-equality operators checking for remainder of 0 when divided by 3   
      # ***NOTE*** According to [StackOverflow](http://stackoverflow.com/questions/7156955/whats-the-difference-between-equal-eql-and),  "Case equality" AKA "===" AKA "triple =", is preferred over "==" AKA "double ="
      # *****MOREOVER*****, case statements are preferred over standard conditionals-this has been confirmed according to my very
      # own academic research and engagements with CS professors-BUT-here is an outstanding explanation by [@DanielleSucher](http://www.daniellesucher.com/2013/07/ruby-case-versus-if/)
    divisibleBy3 = (number % 3 == 0)
    # define local method 'divisibleby5' defining a function checking divisibility of initialized by single-variable 'number' using the modulus and case-equality operators checking for remainder of 0 when divided by 5     
    divisibleBy5 = (number % 5 == 0)
    # construct case statement according to fizzbuzz specifications for 3 and 5, only 3 and only 5
    case
        #according to divisibiity by 3 and 5 using the AND logical operator
        when divisibleBy3 && divisibleBy5
            #print "FizzBuzz"
            puts "FizzBuzz"
        #according to divisibiity by 3
        when divisibleBy3
            #print "Fizz"
            puts "Fizz"
        #according to divisibiity by 5
        when divisibleBy5
            #print "Buzz"
            puts "Buzz"
        #use conditional else statement to account for numbers not divisible by 3 or 5
        else
            #print number that isn't divisible by 3 or 5  
            puts number
        #end case statement
    end
    #end method
end

#call range of 1-100 utilizing the enumerable .each; invoke the enumerated range by block treating each number to initialize fizzbuzz method
(1..100).each { |n| fizzbuzz(n) }
