#  Write your solution freely! 
#
#  # Example:
#
#  key = 'Playfair Example.'
#  input_message = 'Hide the gold in the tree stump'
#  pc = PlayfairCipher.new key
#
#  p estr = pc.encrypt(input_message)  #=> "BMODZBXDNABEKUDMUIXMMOUVIF"
#  p pc.decrypt estr                   #=> "HIDETHEGOLDINTHETREXESTUMP"
#
#  require 'pp'
#  pp pc.square                        #=> [["P", "L", "A", "Y", "F"],
#                                      #    ["I", "R", "E", "X", "M"],
#                                      #    ["B", "C", "D", "G", "H"],
#                                      #    ["K", "N", "O", "Q", "S"],
#                                      #    ["T", "U", "V", "W", "Z"]]