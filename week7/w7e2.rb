#  Exercise2. You are using a class (say DTRConvertor) that’s got a bug in one 
#  of its methods (the bug is that the conversion rate is Rs 38). You know 
#  where the bug is and how to fix it, but you can’t or don’t want to change 
#  the source file itself. Write code to do it. The original class is:
#
#  class DTRConvertor
#    def convert(dollar_amount)
#      dollar_amount * 40.0 # Bug here
#    end
#  end
#  m = DTRConvertor.new
#  puts m.convert(100.0)