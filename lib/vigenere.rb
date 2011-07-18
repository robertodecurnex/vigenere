require 'caesar'

# Vigenère Cipher
# 
# encode/decode any string using the Vigenère Cipher method.
# 
# Usage:
#   Vigenere.encode('AAA', 'CAESAR') #=> "CAESAR"
#   Vigenere.encode('BIO', 'CAESAR') #=> "DISTIF"
#
#   Vigenere.decode('AAA', 'CAESAR') #=> "CAESAR"
#   Vigenere.decode('BIO', 'DISTIF') #=> "CAESAR" 
# 

module Vigenere

  def Vigenere.encode(key, plain_text)
    key = key.upcase.split('')

    cipher_text = plain_text.upcase.split('').collect do |letter|
      if !('A'..'Z').include?(letter)
        cipher_letter = letter
      else
        cipher_letter = Caesar.encode(key.first, letter)
        key << key.shift 
      end
      cipher_letter
    end

    return cipher_text.join    
  end

  def Vigenere.decode(key, cipher_text)
    key = key.upcase.split('')

    plain_text = cipher_text.split('').collect do |cipher_letter|
      if !('A'..'Z').include?(cipher_letter)
        letter = cipher_letter
      else
        letter = Caesar.decode(key.first, cipher_letter)
        key << key.shift 
      end
      letter
    end

    return plain_text.join
  end

end

