#  The Really Annoying Project Manager (Yes Boss) has made a spec change!
#
#  "There will be an amoeba shape on the screen, with the others. When the user 
#  clicks on the amoeba, it will rotate like the others, and play a .hif sound 
#  file. The other figures like rectangle rotate around the center. I want the 
#  amoeba shape to rotate around a point on one end, like a clock hand !"
#

class Shape
  def initialize(name = self.class.to_s.downcase)
    @name = name || self.class.to_s
  end
  
  def play_sound
    'Playing AIF Sound'
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

class Amoeba < Shape
  def rotate
    "Rotating %s 360 degrees arround a point" % @name
  end
  
  def play_sound
    'Playing HIF Sound'
  end
end

circle1 = Circle.new()
circle1.click
puts
square1 = Square.new()
square1.click
puts
triangle1 = Triangle.new()
triangle1.click
puts
amoeaba1 = Amoeba.new()
amoeaba1.click