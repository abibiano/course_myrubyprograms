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
  end
  
  def eat
  end
  
  def chase_cat
  end
  
  def to_s
    @name
  end
end

d = Dog.new('Leo')
puts d
puts d.eat