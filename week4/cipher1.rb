#  Step 1: Write the snippet to make the 5 x 5 square table.
#  Example 1: Using "playfair example" as the key, the table becomes:
#
#  P L A Y F
#  I R E X M
#  B C D G H
#  K N O Q S
#  T U V W Z
#
#  Example 1: Using "I Love Ruby." as the key, the table becomes:
#
#  I L O V E
#  R U B Y A
#  C D F G H
#  K M N P Q
#  S T W X Z

class Cipher
  attr_accessor :cifer_square
  LETTERS = ('A'..'Z').to_a.join 
    
  def initialize(key)
      @cifer_square = create_cipher_square key
  end
  

  def create_key_phrase_array(key)
    key_phrase = key.upcase.gsub(/[^A-Z]/, '')
    key_phrase += ('A'..'Z').to_a.join 
    key_phrase.gsub!('J', 'I')  
    key_phrase.chars.to_a.uniq!
  end

  def create_cipher_square(key)
    key_phrase_array = create_key_phrase_array(key)
    rows = Array.new(5) do |i|
      Array.new(5) do |j|
        key_phrase_array[i * 5 + j]
      end
    end
    rows
  end
end

c = Cipher.new('playfair example')

c.cifer_square.each { |e| p e }
