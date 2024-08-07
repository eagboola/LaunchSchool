=begin

Base 20 digits include the decimal digits `0` through `9`,
and the letters `'A'` through `'J'` in uppercase or loweracse.

Write a regex that matches base 20 digits.

Test case:
  "0xDEADBEEF
  1234.5678
  Jamaica
  plow ahead"

=end

pattern = /[0-9A-J]/i
strings = %w(0xDEADBEEF 1234.5678 Jamaica plow ahead)

matches = strings.join.split('').select do |char|
  char.match(pattern) 
end

p matches
puts matches.count
