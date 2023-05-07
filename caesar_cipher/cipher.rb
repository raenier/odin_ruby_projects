class CaesarCipher
  def self.encrypt(sentence, shift_number)
    alphabet = ('a'..'z').to_a

    sentence.each_char.map do |letter|
      next ' ' if letter.strip.empty?
      shifted_index = alphabet.find_index(letter.downcase) + shift_number
      #start over alphabet array if shifted_index is greater than alphabets length
      shifted_index = shifted_index > (alphabet.length - 1) ?  (shifted_index - alphabet.length) : shifted_index
      alphabet[shifted_index]
    end.join('')
  end

end
p ciphered = CaesarCipher.encrypt('The quick brown fox jumps over the lazy dog', 5)
