=begin

Write a regex that matches the word `"The"` when it occurs at the
beginning of a line.

Test strings:
  " The lazy cat sleeps.
  The number 623 is not a word.
  Then, we went to the movies.
  Ah. The bus has arrived."

=end

str = "The lazy cat sleeps.
The number 623 is not a word.
Then, we went to the movies.
Ah. The bus has arrived."

pattern = /^The\b/
# this pattern instructs the regex to match to any substring
# that begins a line (`^`) containing the characters `"The"`,
# and is ended by a word boundary (`\b`)

matches = str.scan(pattern)

p matches
p matches.count
