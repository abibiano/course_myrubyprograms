# c. In the following Ruby code, x gets the value nil and pqr remains an 
# undefined local variable. Why?
#
 if false
  x = pqr
 end
 puts x
 puts pqr
# 
# Variables are created and values assigned to them by assignment expressions
# therefore x is created on the assigment statment x = pqr but as this statment
# never executs the value for the variable is nil
# 
# pqr has no assigment statment, therefore it's not defined
