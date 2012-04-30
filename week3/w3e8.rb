#  Exercise8. Write a Ruby program that prints the numbers from 1 to 100.
#  But for multiples of three print "Fizz" instead of the number and for multiples
#  of five print "Buzz". For numbers which are multiples of both three and five
#  print "FizzBuzz". Discuss this in the FizzBuzz Forum.

def calculate_value(number, multiple_text_hash)
  output = ''
  multiple_text_hash.each {|key, value| output += value if number % key == 0}
  output = number if output.length == 0
  output
end

(1..100).each {|number| puts calculate_value(number, {3 => 'Fizz', 5 => 'Buzz'})}