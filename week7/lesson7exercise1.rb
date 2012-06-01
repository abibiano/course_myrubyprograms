#  Write another program named 
#  lesson7exercise1a.rb that creates an object of the class defined in program 
#  lesson7exercise1.rb and then marshals it and then restores it.
class Klass
  attr_reader :say_hello 
  def initialize hello_message
    @say_hello = hello_message 
  end    
end
