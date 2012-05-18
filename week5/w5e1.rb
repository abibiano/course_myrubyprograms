#  Exercise1. Write a class UnpredictableString which is a sub-class of String.
#  This sub-class should have a method called scramble() which randomly rearranges any string as follows:
#
#  >ruby unpredictablestring.rb
#  daano.r n sdt a htIsw taikmgy r
#  >Exit code: 0
#  # the original string was: "It was a dark and stormy night."

class String
  def scramble
    chars.to_a.shuffle.join
  end
end

sentence = 'It was a dark and stormy night.'
puts sentence.scramble
