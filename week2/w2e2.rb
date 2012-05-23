# Exercise2.
# Run the following two programs and try and understand the difference in the
# outputs of the two programs. The program:
#
# def mtdarry
#  10.times do |num|
#    puts num
#  end
# end
# 
# mtdarry => prints 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 (every number on each line)
#
# and the program:
# 
 def mtdarry
  10.times do 
  nil
  end
 end
 puts mtdarry #=> prints 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 (every number on each line)
 