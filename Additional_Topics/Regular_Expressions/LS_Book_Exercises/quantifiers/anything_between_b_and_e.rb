=begin

Wriate a regex that matches any word that begins with `"b"` and ends with 
an `"e"`, and has any number of letters between those (2). Regex can be
limited to lowercase letteres.

=end

str = "To be or not to be
Be a busy bee
I brake for animals."

pattern = /\bb[a-z]*/

matches = str.scan(pattern)

p matches
p matches.count
