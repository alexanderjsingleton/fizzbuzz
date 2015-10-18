require 'benchmark'

 def fizzbuzz(array)
    array.map!{ |number| 
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
  }
end

puts Benchmark.measure{fizzbuzz(Array(1..10000))}
puts "fizzbuzz"
puts RubyVM::InstructionSequence.disasm(method(:fizzbuzz))

def super_fizzbuzz(array)
  array.map! { |element|
   if(element % 3 == 0 && element % 5 == 0)
    puts "FizzBuzz" 
   elsif(element % 3 == 0)
    puts "Fizz"
   elsif (element % 5 == 0)
    puts "Buzz"
   else
    puts element
   end
}
end

puts Benchmark.measure{super_fizzbuzz(Array(1..10000))}
puts "super_fizzbuzz"
puts RubyVM::InstructionSequence.disasm(method(:super_fizzbuzz))

# Additional Documentation
  # https://en.wikipedia.org/wiki/Assembly_language
  # underTheHood => http://ruby-doc.org/core-2.0.0/RubyVM/InstructionSequence.html
  # http://ruby-doc.org/stdlib-2.0.0/libdoc/benchmark/rdoc/Benchmark.html

