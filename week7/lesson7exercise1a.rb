#  Write another program named 
#  lesson7exercise1a.rb that creates an object of the class defined in program 
#  lesson7exercise1.rb and then marshals it and then restores it.
require 'lesson7exercise1'

obj = Klass.new("hello")

marshaled_object = Marshal.dump(obj)
new_obj = Marshal.load(marshaled_object)
puts new_obj.say_hello

