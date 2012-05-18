#  The Really Annoying Project Manager (Yes Boss) has made a spec change!
#
#  "There will be an amoeba shape on the screen, with the others. When the user 
#  clicks on the amoeba, it will rotate like the others, and play a .hif sound 
#  file. The other figures like rectangle rotate around the center. I want the 
#  amoeba shape to rotate around a point on one end, like a clock hand !"
#

class Shape
  def play_sound
    puts 'Playing AIF Sound'
  end
  
  def rotate
    puts 'Rotating 360 degrees arround the center'
  end
  
  def click
    rotate
    play_sound
  end
end

class Square < Shape 
  def rotate
    puts 'Rotating square 360 arround the center'
  end
end

class Circle < Shape
  def rotate
    puts 'Rotating circle 360 arround the center'
  end
end

class Triangle < Shape
  def rotate
    puts 'Rotating triangle 360 arround the center'
  end
end

class Amoeba < Shape
  def rotate
    puts 'Rotating amoeba 360 around a point'
  end
  
  def play_sound
    puts 'Playing HIF Sound'
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