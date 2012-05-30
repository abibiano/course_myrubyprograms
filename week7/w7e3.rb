#  Exercise3. Write a method called month_days, that determines the number of 
#  days in a month. Usage:
#
#  days = month_days(5) # 31 (May)
#  days = month_days(2, 2000) # 29 (February 2000)
#  Remember, you could use the Date class here. Read the online documentation 
#  for the Date class. You must account for leap years in this exercise.
require 'date'

def month_days(*args)
  if args.size < 1  || args.size > 2  
    raise ArgumentError,  'Arguments has to be month, year or month only' 
  else
    if args.size == 1
      year = Time.now.year
    else
      year = args[1]
    end
    ((Date.new(year, args[0], 1) >> 1) - 1).day
  end
end

puts month_days(5) # 31 (May)
puts month_days(2, 2000) # 29 (February 2000)