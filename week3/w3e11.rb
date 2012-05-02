#  Exercise11. Write a Ruby program that, when given an array:
#  collection = [12, 23, 456, 123, 4579] prints each number, and tells you
#  whether it is odd or even.
collection = [12, 23, 456, 123, 4579]
collection.each { |element| puts element.to_s << (element.even? ? ' even' : ' odd') }