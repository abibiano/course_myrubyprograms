# Write a Ruby program that displays how old I am, if I am 979000000 seconds
# old. Display the result as a floating point (decimal) number to two decimal
# places (for example, 17.23).
seconds = 979000000
years = seconds.to_f / 60 / 60 / 24 / 365
puts format("%.2f", years) # prints 31.04