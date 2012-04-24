# a. Imagine for a moment, that you want to be able to set a variable, but if 
# it’s not set, you default to a known value. You’d rather do it on a single line.
puts expand = defined?( expand ) ? expand : true
# Why is the output nil ?

I think it has somethink to do with how the expressions are evaluated
defined?( expand ) is evalueated to true (the cariable exists),
therefore the conditional statment ?: will return the expand variable,
but actually this variable is not set, therefore it returns nil