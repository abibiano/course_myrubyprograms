y = false
z = true
x = y or z    # assignment has higher precedence than or
puts x        # prints false
(x = y) or z  # brackets give higher precedence to the asignment
puts x        # prints false
x = (y or z)  # brackets give higher precedence to the or
puts x        # prints true