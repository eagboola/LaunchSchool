=begin

Write a regex that matches any letter except `'x'` or `'X'`.

Test strings:
  "0x1234"
  "Too many XXXXXXXXXXxxxxxxXXXXXXXXXXXX to count."
  "The quick brown fox jumps over the lazy dog"
  "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"

=end

str = "0x1234
Too many XXXXXXXXXXxxxxxxXXXXXXXXXXXX to count.
The quick brown fox jumps over the lazy dog
THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"

pattern = /[a-wy-z]/i

matches = str.chars.select do |char|
  char.match(pattern)
end

p matches
puts "#{matches.count} matching patterns."

# Why is the pattern `/[^xX]/` not a valid solution to this problem?
# 
# The negation produces a pattern that will be matched for **any** character
# that is no `'x'` or `'X'` including digits. Here we are only trying to match
# to letters.
