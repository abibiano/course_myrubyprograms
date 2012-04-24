# Exercise3.
# Write a method leap_year?.
# It should accept a year value from the user, check whether it's a leap year,
# and then return true or false. With the help of this leap_year?() method 
# calculate and display the number of minutes in a leap year (2000 and 2004) 
# and the number of minutes in a non-leap year (1900 and 2005).
# Note: Every year whose number is divisible by four without a remainder is a 
# leap year, excepting the full centuries, which, to be leap years, must be 
# divisible by 400 without a remainder. If not so divisible they are common 
# years. 1900, therefore, is not a leap year.

def leap_year?(year)
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end

def minutes_in_a_year(year)
  days = leap_year?(year) ? 366 : 365
  days * 24 * 60
end

puts "Year?: "
STDOUT.flush  
line = gets.chomp
puts "The year %i has %i minuts" % [line, minutes_in_a_year(line.to_i)]