=begin
Write a program that asks for user input, then changes that input from one temperature unit to another based upon the user's wishes.

Write code to handle user input. That code must include a succinct explanation of how the user should type the values so the program can understand if it's meant to convert from Celsius to Fahrenheit or vice-versa. It will then proceed to "parse" the input and obtain two "values": "conversion to make" and "value to use", where the first means to convert from Celsius to Fahrenheit or vice-versa and the second is the temperature value to be converted.

Write DRY (Don't Repeat Yourself) code - method(s) - for the conversion process, assuming that the temperature value is always passed as a Float. This is to "prevent" you from writing code to validate the argument. But that doesn't mean you shouldn't validate the value. Meaning that you shouldn't worry if the argument is or is not a Float - assume it is - and instead worry if the value is within an "acceptable range". Consider absolute zero.

If you want to take this challenge even further, then make the conversion program also able to handle other units of temperature (such as Kelvin, Rankine, etc).

Note: the intention here is not to have you code lines and lines of statements but to think in out-of-the-box, abstract ways:

Tip 1: Kelvin is just an "adjustment" of another calculation. 
Tip 2: A conversion of a value can be seen as unit_from, unit_to, value_to_convert. An abstract example would be to convert 100 from Euros to US Dollars.
=end

def from_fahrenheit_to_celsius(value_to_convert)
   (value_to_convert - 32) * 5/9
end

def from_kelvin_to_celsius(value_to_convert)
   value_to_convert - 273.15
end

def from_rankine_to_celsius(value_to_convert)
  (value_to_convert - 491.67) * 5/9
end

def from_celsius_to_fahrenheit(value_to_convert)
    value_to_convert * 9/5 + 32
end

def from_celsius_to_kelvin(value_to_convert)
   value_to_convert + 273.15
end

def from_celsius_to_rankine(value_to_convert)
  (value_to_convert + 273.15) ** 9/5
end

def convert(unit_from, unit_to, value_to_convert)
  raise ArgumentError, 'Argument value_to_convert has to be >=0' if value_to_convert < 0 
  value_in_celsius = case
                     when unit_from == 'c' then value_to_convert
                     when unit_from == 'f' then from_fahrenheit_to_celsius(value_to_convert)
                     when unit_from == 'k' then from_kelvin_to_celsius(value_to_convert)
                     when unit_from == 'r' then from_rankine_to_celsius(value_to_convert)
                     else raise ArgumentError, 'Argument unit_from is not c, f, k or r'
                     end
  result = case
           when unit_to == 'c' then value_in_celsius
           when unit_to == 'f' then from_celsius_to_fahrenheit(value_to_convert)
           when unit_to == 'k' then from_celsius_to_kelvin(value_to_convert)
           when unit_to == 'r' then from_celsius_to_rankine(value_to_convert)
           else raise ArgumentError, 'Argument unit_to is not c, f, k or r'
           end
end

loop do
  puts 'Syntax: units_from units_to value_to_convert'
  puts '   Units can be: <c>elsius, <f>ahrenheit, <k>elvin, <r>ankine'
  puts '   For example: c f 20 (converts 20 celsius to fahrenheit)'
  $stdout.flush
  input = gets.chomp
  exit if input == ''
  input_array = input.split(' ')
  begin
    puts "****** Result %.2f ******" % convert(input_array[0].downcase, input_array[1].downcase, input_array[2].to_f)
  rescue => msg
    puts msg 
    puts 'Try again with correct syntaxt'
  end
end