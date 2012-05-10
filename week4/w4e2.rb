#  2. Write a Rectangle class. I shall use your class as
#  follows:
#  
#  r = Rectangle.new(23.45, 34.67)
#  puts "Area is = #{r.area}"
#  puts "Perimeter is = #{r.perimeter}"

class Rectangle
  attr_accessor :area, :perimeter
  def initialize(height, width)
      @area = width * height
      @perimeter = 2 * width + 2 * height
  end

end

r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"