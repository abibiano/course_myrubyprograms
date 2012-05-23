#  Exercise4. Given the following Ruby code snippet:
#
# a = (1930...1951).to_a
# puts a[rand(a.size)]
# puts a
#  When you run this program, which of the following values will not be displayed?
#  1930...1951 represents a exclusive range where the end value is not part of the
#  range
#  1929 => is not displayed because it's not in the range (between 1930 and 1950)
#  1930
#  1945
#  1950
#  1951 => is not displayed because it's not in the range. Thre dots means that
#          the range is exclusive and the end value is not part of the range
#  1952 => is not displayed because it's not in the range (between 1930 and 1950)
#  Explain why that value will not be displayed.
#
#  Also, have a look at the splat operator:
#
a = [*1930...1951]
b = [1930...1951]
puts a.count #=> Prints 21
puts b.count #=> Prints 1