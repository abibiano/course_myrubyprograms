# From Michael Kohl:
# 
# Over the past few years I've noticed that lots of programmers seem to have 
# pretty big deficits when it comes to formal logic. Personally I think that's 
# a shame, so I decided to post a little challenge:
# 
# Ruby has a ternary operator (`?:`), which is basically a short version of `if...else`:
# 
# puts 5 > 3 ? "yeah" : "boo" #=> nil
# yeah
# puts 5 < 3 ? "yeah" : "boo" #=> nil
# boo
# 
# 
# Now imagine that operator wouldn't exist, how could you easily replace it by 
# using logic operators and exploiting short-circuiting and precedence?


# Based on decomentation found in the book "The Ruby Programming Language by 
# David Flanagan and Yukihiro Matsumoto. Copyright 2008 David Flanagan and 
# Yukihiro Matsumoto, 978-0-596-51617-8."
#  
# Here's how the && operator actually works. 
# First, it evaluates its lefthand operand. If this operand is nil or false, 
# then it returns that value and skips the righthand operand altogether. 
# Otherwise, the lefthand operand is a true value and the overall value 
# of the && operator depends on the value of the righthand operand. 
# In this case, the operator evaluates its righthand operand and returns that value.

# The || operator works like this: first, it evaluates its lefthand operand. 
# If this is any value other than nil or false, it simply returns that value.
#  Otherwise, it evaluates its righthand operand and returns that value.



puts 5 > 3 ? "yeah" : "boo"
puts 5 > 3 && "yeah" || "boo"
puts 5 < 3 ? "yeah" : "boo"
puts 5 < 3 && "yeah" || "boo"