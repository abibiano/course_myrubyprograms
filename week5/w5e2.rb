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

class Shape
  def initialize(name = self.class.to_s.downcase, soundfile = 'soundfile.aif')
    @name = name || self.class.to_s
    @soundfile = soundfile
  end
  
  def play_sound
    "Playing Sound %s for %s" % [@soundfile, @name]
  end
  
  def rotate
    "Rotating %s clockwise 360 degrees arround the center" % @name
  end
  
  def click
    puts rotate
    puts play_sound
  end
end

class Square < Shape 
end

class Circle < Shape
  def rotate
    "Nothing done to rotate %s arround the center" % @name
  end
end

class Triangle < Shape
end

circle1 = Circle.new
circle1.click
puts
square1 = Square.new
square1.click
puts
triangle1 = Triangle.new
triangle1.click