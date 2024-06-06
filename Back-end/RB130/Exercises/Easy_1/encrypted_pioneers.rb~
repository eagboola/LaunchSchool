ROT1 = ('A'..'M').to_a
ROT2 = ('N'..'Z').to_a
ALPHABET = ROT1 + ROT2

def letter?(char)
  ALPHABET.include?(char) || ALPHABET.include?(char.upcase)
end

def uppercase?(char)
  ALPHABET.include?(char)
end

ciphers = File.read('names.txt').split("\n")

names = ciphers.map do |cipher|
  new_chars = cipher.chars.map do |char|
    if letter?(char)
      if ROT1.map(&:downcase).include?(char) || ROT1.include?(char)
        new_char = uppercase?(char) ? ROT2[ROT1.index(char)] : ROT2[ROT1.map(&:downcase).index(char)].downcase
      else
        new_char = uppercase?(char) ? ROT1[ROT2.index(char)] : ROT1[ROT2.map(&:downcase).index(char)].downcase
      end
    else
      new_char = char
    end

    new_char

  end

  new_chars.join('')

end

puts names
