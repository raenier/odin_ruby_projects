class CaesarCipher2
  def self.encrypt(text, shift_number)
    text.each_char.map do |char|
      lowercase_range = 97..122
      uppercase_range = 65..90
      char_num = char.ord
      # check if capital or not
      case char_num
      when lowercase_range
        shifted = char_num + shift_number
        (shifted > lowercase_range.last) ? lowercase_range.first + (shifted - lowercase_range.last - 1) : shifted
      when uppercase_range
        shifted = char_num + shift_number
        (shifted > uppercase_range.last) ? uppercase_range.first + (shifted - uppercase_range.last - 1) : shifted
      else char_num
      end.chr
    end.join
  end

  def self.decrypt(text, shift_number)
    text.each_char.map do |char|
      lowercase_range = 97..122
      uppercase_range = 65..90
      char_num = char.ord
      case char_num
      when lowercase_range
        shifted = char_num - shift_number
        (shifted < lowercase_range.first) ? lowercase_range.last - (lowercase_range.first - shifted - 1) : shifted
      when uppercase_range
        shifted = char_num - shift_number
        (shifted < uppercase_range.first) ? uppercase_range.last - (uppercase_range.first - shifted - 1) : shifted
      else char_num
      end.chr
    end.join
  end
end

p enc = CaesarCipher2.encrypt('The quicK brown foX JuMps over the Lazy dog', 5)
p dec = CaesarCipher2.decrypt(enc, 5)
