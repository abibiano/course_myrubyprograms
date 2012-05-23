#  Exercise8. Write a Ruby program that prints the numbers from 1 to 100.
#  But for multiples of three print "Fizz" instead of the number and for multiples
#  of five print "Buzz". For numbers which are multiples of both three and five
#  print "FizzBuzz". Discuss this in the FizzBuzz Forum.

def calculate_value(number, multiple_text_hash = {:Fizz => 3 , :Buzz => 5 })
  output = ''
  multiple_text_hash.each {|key, value| output += key.to_s if number % value == 0}
  output.empty? ? number : output
end

(1..100).each {|number| puts calculate_value(number, {Fizz: 3 , Buzz: 5, Dazz: 7, Kezz: 11})}