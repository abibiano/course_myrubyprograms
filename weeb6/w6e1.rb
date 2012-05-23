# Write a class called Person that has balance as an instance variable 
# and make it readable via an accessor.

class Person
  attr_accessor :balance
  def initialize(balance = 0)
    @balance = balance
  end
end

alex = Person.new
puts alex.balance