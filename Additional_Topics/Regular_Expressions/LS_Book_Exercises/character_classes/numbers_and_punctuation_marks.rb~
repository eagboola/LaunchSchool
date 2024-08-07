=begin

Write a regex that matches any character that is not a letter, a space, a carriage return (`\n`), or a line feed (`\r`).

Test strings:
  "0x1234abcd
  1,000,000,000s and 1,000,000,000s.
  THE quick BROWN fox JUMPS over THE lazy DOG!"

=end

str = "0x1234abcd
1,000,000,000s and 1,000,000,000s.
THE quick BROWN fox JUMPS over THE lazy DOG!"

pattern = /[^a-zA-Z\n\r ]/

matches = str.chars.select do |char|
  char.match(pattern)
end

p matches
puts matches.count
