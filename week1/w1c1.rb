# Using what we have learned so far: I wonder if anyone could have a crack at working out the age in
# years and months form. For example “I’m 32 years and 6 months old.”
# Use the following values for age_in_seconds:
# 
# 979000000
# 2158493738
# 246144023
# 1270166272
# 1025600095

def age_in_seconds(age_in_seconds)
  years = age_in_seconds.to_f / 60 / 60 / 24 / 365
  months = (years - years.to_i) * 12
  return years.to_i, months.to_i
end

puts "You are %s and %s months old" % age_in_seconds(979000000)
puts "You are %s and %s months old" % age_in_seconds(2158493738)
puts "You are %s and %s months old" % age_in_seconds(246144023)
puts "You are %s and %s months old" % age_in_seconds(1270166272)
puts "You are %s and %s months old" % age_in_seconds(1025600095)
