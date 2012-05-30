#  Exercise1. Write a Ruby program named lesson7exercise1.rb that defines a 
#  class called Klass which will be called in another program as follows:
#
require 'lesson7exercise1'


obj = Klass.new("hello")
puts obj.say_hello
#
#  where say_hello is a method in that class, which returns the string sent 
#  when an object of Klass is created. Write another program named 
#  lesson7exercise1a.rb that creates an object of the class defined in program 
#  lesson7exercise1.rb and then marshals it and then restores it.