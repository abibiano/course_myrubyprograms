#  Exercise1. Write a class called Dog, that has name as an instance variable 
#  and the following methods:
#
#  bark(), eat(), chase_cat()
#  I shall create the Dog object as follows:
#  d = Dog.new('Leo')

class Dog
  def initialize(name)
    @name = name
  end
  
  def bark
    'Woof! Woof!'
  end
  
  def eat
    'Crunch! Crunch!'
  end
  
  def chase_cat
    'Miauuuuuuu!'
  end
  
  def to_s
    @name
  end
end

puts Object.const_defined?('Dog') #=> checks if defined
d = Dog.new('Leo')
puts d
puts d.eat