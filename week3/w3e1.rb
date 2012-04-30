#  Exercise1. Why is the output of this program:
#
def method
  a = 50
  puts a
end
a = 10
method
puts a
#  as shown below:
#
#  50
#  10
#
# Both a are local variable
#
# The top level a variable has his own local scope
# and the variable a in the method definition has its own local scope
# therefore the value of both are printed