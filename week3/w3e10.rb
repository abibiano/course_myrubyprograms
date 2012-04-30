#  Exercise10. Write a Ruby program that, when given an array:
#  collection = [1, 2, 3, 4, 5] calculates the sum of its elements.

collection = [1, 2, 3, 4, 5]
puts collection.inject { |sum, element| sum + element }
# or
puts collection.inject(:+)