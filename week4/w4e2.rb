#  2. Write a Rectangle class. I shall use your class as
#  follows:
#  
#  r = Rectangle.new(23.45, 34.67)
#  puts "Area is = #{r.area}"
#  puts "Perimeter is = #{r.perimeter}"

class Rectangle
  def initialize(height, width)
      @height = height
      @width = width
  end
  
  def area
    @width * @height
  end
  
  def perimeter
    2 * @width + 2 * @height
  end
end

r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"