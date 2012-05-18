#  Step 4: Write the snippet to convert the paired charactors (the formed message).
#  Example to decrypt:
#
#            UV --> TU
#            OD --> DE
#            BM --> HI
#  # Decryption is just the reverse of encryption.

class Cipher
  attr_accessor :cifer_square
  LETTERS = ('A'..'Z').to_a.join 
    
  def initialize(key)
    @cifer_square = create_cipher_square key
  end
  
  def decrypt(message)
    decrypted_message = ''
    message_pairs = message.scan(/.{1,2}/)
    message_pairs.each do |pair|
      col_0 = nil
      col_1 = nil
      row_0 = nil
      row_1 = nil
      
      @cifer_square.each_index do |row|  
        col_0 = @cifer_square[row].index pair[0]
        if col_0 != nil
          row_0 = row
          break
        end
      end
      @cifer_square.each_index do |row|  
        col_1 = @cifer_square[row].index pair[1]
        if col_1 != nil
          row_1 = row
          break
        end
      end
      if row_0 == row_1
        decrypted_message += col_0 > 0 ? @cifer_square[row_0][col_0 - 1] : @cifer_square[row_0][4]
        decrypted_message += col_1 > 0 ? @cifer_square[row_0][col_1 - 1] : @cifer_square[row_0][4]
      elsif col_0 == col_1
        decrypted_message += row_0 > 0 ? @cifer_square[row_0 - 1][col_0] : @cifer_square[4][col_0]
        decrypted_message += row_1 > 0 ? @cifer_square[row_1 - 1][col_0] : @cifer_square[4][col_0]
      else
        decrypted_message += @cifer_square[row_0][col_1]
        decrypted_message += @cifer_square[row_1][col_0]
        
      end  
      
    end
    decrypted_message
  end

  
  def encrypt(message)
    encrypted_message = ''
    formed_message = form_message message
    message_pairs = formed_message.scan(/.{1,2}/)
    message_pairs.each do |pair|
      col_0 = nil
      col_1 = nil
      row_0 = nil
      row_1 = nil
      
      @cifer_square.each_index do |row|  
        col_0 = @cifer_square[row].index pair[0]
        if col_0 != nil
          row_0 = row
          break
        end
      end
      @cifer_square.each_index do |row|  
        col_1 = @cifer_square[row].index pair[1]
        if col_1 != nil
          row_1 = row
          break
        end
      end
      if row_0 == row_1
        encrypted_message += col_0 < 4 ? @cifer_square[row_0][col_0 + 1] : @cifer_square[row_0][0]
        encrypted_message += col_1 < 4 ? @cifer_square[row_0][col_1 + 1] : @cifer_square[row_0][0]
      elsif col_0 == col_1
        encrypted_message += row_0 < 4 ? @cifer_square[row_0 + 1][col_0] : @cifer_square[0][col_0]
        encrypted_message += row_1 < 4 ? @cifer_square[row_1 + 1][col_0] : @cifer_square[0][col_0]
      else
        encrypted_message += @cifer_square[row_0][col_1]
        encrypted_message += @cifer_square[row_1][col_0]
      end  
      
    end
    encrypted_message
  end
  
  def form_message(message)
    formed_message = message.upcase.gsub(/[^A-Z]/, '')
    i = 0
    replace_with_x = true
    while i < formed_message.length
      if formed_message[i] == formed_message[i + 1]
        formed_message.insert(i + 1, replace_with_x ? 'X' : 'Z')
        replace_with_x = !replace_with_x
      end
      i += 2
    end
    formed_message.length.even? ? formed_message : formed_message + 'X'
  end
  
  private
    
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

c = Cipher.new('First Amendment')
c.cifer_square.each { |e| p e }
message = <<TESTSTRING
Congress shall make no law respecting an establishment of religion, or
prohibiting the free exercise thereof; or abridging the freedom of speech, or of the press;
or the right of the people peaceably to assemble, and to petition the government for a
redress of grievances.
TESTSTRING
puts message
encrypted_message = c.encrypt(message)
puts c.form_message message
puts encrypted_message
puts 'OWEHEGRYTYNQBVOADBNDPOMVEGRQMGFREHMDNRFDLVRTCNNDIUISAPRCMWMQEXIPCSCFFREHSKAREGGRGRGEOMRNSKGEMPILFEGFTMCREHSKAREGNAWCLIRQGRMGCQIPIFGNXENRIQSFGNSRHKIUIFGNXGPQPAXGMBNMLVZSLMRYRNACPAMDKDPQDRRFMWDSGNCPXASEENDSILFEEGETNRIQRBSRAXMDGMRY'
puts c.decrypt(encrypted_message)