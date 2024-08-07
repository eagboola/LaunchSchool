=begin

This exercise has multiple parts.

1. Write a regex that matches any line of that ends with `"?"`.
2. Write a regex that does the above, but won't match a line that
   consists of a single `"?"` and no other characters.

=end

str = "What's up, doc?\n
Say what? No way.\n
?\n
Who? What? Where? When? How?"

pattern1 = /^.*\?$/
# a match is a line containing any number of any characters, and 
# the line ends with `"?"`

pattern2 = /^.+\?$/  
# a match is a line containing one or more of any character, and 
# the line ends with `"?"`


matches1 = str.scan(pattern1)
matches2 = str.scan(pattern2)

p matches1
p matches2
