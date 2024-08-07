=begin

Write a regex that matches any (3)-letter word, where a word
is any substring comprised entirely oletters.

Test strings:
  "reds and blues
  The lazy cat sleeps.
  The number 623 is not a word. Or is it?"

=end

str = "reds and blues
The lazy cat sleeps.
The number 623 is not a word. Or is it?"

pattern = /\b[a-z][a-z][a-z]\b/i

matches = str.scan(pattern)

p matches
p matches.count
