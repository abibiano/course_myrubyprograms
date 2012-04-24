# b. What happens in the following Ruby code?
# 
# x = 10
# y = 20
# x, y = y, x
# puts x
# puts y

Ruby are doing parallel assignment 

"When Ruby sees more than one rvalue in an assignment, the rules of parallel 
assignment come into play. First, all the rvalues evaluated, left to right, 
and collected into an array (unless they are already an array). 
This array will be the eventual value returned by the overall assignment. 
Next, the left hand side (lhs) is inspected. 
If it contains a single element, the array is assigned to that element.
If the lhs contains a comma, Ruby matches values on the rhs against successive
elements on the lhs. Excess elements are discarded."