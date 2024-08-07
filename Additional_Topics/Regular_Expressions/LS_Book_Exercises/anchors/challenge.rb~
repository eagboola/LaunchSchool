=begin

Write a regex that matches an entire line of text that consists
of exactly (3) words defined as follows:
  + first word is `"A"` or `"The"`
  + a single space exists between first and second words
  + second word is any (4)-letter word
  + a single exists between second and third words
  + third and last word is either `"dog"` or `"cat"`

Test strings:
  "A grey cat
  A blue caterpillar
  The lazy dog
  The white cat
  A loud dog
  --A loud dog
  Go away dog
  The ugly rat
  The lazy, loud dogA grey cat
  A blue caterpillar
  The lazy dog
  The white cat
  A loud dog
  --A loud dog
  Go away dog
  The ugly rat
  The lazy, loud dog"

=end

str = "A grey cat\n
A blue caterpillar\n
The lazy dog\n
The white cat\n
A loud dog\n
--A loud dog\n
Go away dog\n
The ugly rat\n
The lazy, loud dog"

# this is the correct pattern, but Ruby and Rubular operate in different ways,
# so test in Rubular to see proper behavior
pattern = /^(The|A)\b \b[a-z][a-z][a-z]\b \b(dog|cat)$/

matches = str.match(pattern)

puts matches
# p matches.count
