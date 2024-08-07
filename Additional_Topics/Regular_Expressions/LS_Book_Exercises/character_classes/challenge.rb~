=begin

Write a regex that matches a string that looks like a negated character class range,
e.g. `'[^a-z]'`.

=end

str = "The regex /[^a-z]/i matches any character that is
not a letter. Similarly, /[^0-9]/ matches any
non-digit while /[^A-Z]/ matches any character
that is not an uppercase letter. Beware: /[^+-<]/
is at best obscure, and may even be wrong."

# first attempted pattern...
invalid_pattern = /\[\^...\]/
pattern = /\[\^[0-9A-Za-z]-[0-9A-Za-z]\]/

matches = str.split(' ').select {|substr| substr.match(pattern) }
invalid_matches = str.split(' ').select {|substr| substr.match(invalid_pattern) }

p matches
p invalid_matches
