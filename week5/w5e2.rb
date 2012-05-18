#  Exercise2. This exercise thanks to Kathy Sierra. Once upon a time in a 
#  software shop, two programmers were given the same spec and told to "build it".
#  
#  The Really Annoying Project Manager forced the two coders to compete, by 
#  promising that whoever delivers first gets one of those cool Aeron chairs 
#  all the Silicon Valley guys have. The spec. There will be shapes on a GUI, 
#  a square, a circle and a triangle. When the user clicks on a shape, the shape
#  will rotate clockwise 360 degrees (ie. all the way around) and play an AIF 
#  sound file specific to that particular shape. Go for it guys and show me your code.
#
#  Note: This exercise is about inheritance, method overriding and method 
#  overloading not about UI.
#

class Point  
  def initialize(x,y)  
    @x, @y = x,y  
  end  
  attr_reader :x, :y    
end 

class Shape
  attr_accessor :center
  def initialize(center)
    @center = center
  end
  
  def area
    0
  end

  def play_sound
    puts 'AIF Sound'
  end
  
  def rotate
    play_sound
  end
end

class Square < Shape
  attr_accessor :width
  def initialize(center, width)
    super(center)
    @width = width
  end
  
  def rotate
    puts 'Rotating square 360'
    super
  end
  
  def area
    @width**2
  end
end

class Circle < Shape
  attr_accessor :radius
  def initialize(center, radius)
    super(center)
    @radius = radius
  end
  def rotate
    puts 'Rotating circle 360'
    super
  end
  
  def area
    2 * Math::PI * @radius
  end
end

class Triangle < Shape
  attr_accessor :base, :heigth
  def initialize(center, base, heigth)
    super(center)
    @base = base
    @heigth = heigth    
  end
 
  def rotate
    puts 'Rotating triangle 360'
    super
  end
  
  def area
    0.5 * @base * @heigth
  end
end

center_point = Point.new(0, 0)
circle1 = Circle.new(center_point, 5)
puts "%s area: %f" % [circle1.class, circle1.area]
circle1.rotate
puts
square1 = Square.new(center_point, 2)
puts "%s area: %f" % [square1.class, square1.area]
square1.rotate
puts
triangle1 = Triangle.new(center_point, 3, 6)
puts "%s area: %f" % [triangle1.class, triangle1.area]
triangle1.rotate
puts