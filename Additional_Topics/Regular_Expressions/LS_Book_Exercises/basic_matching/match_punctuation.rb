=begin

Write a regex that matches a comma or space.
Test cases:
  "This line has spaces
   This,line,has,commas,
   No-spaces-or-commas"

Note: This exercise performs slightly differently in Rubular

=end

p "This line has spaces".match(/[ ]/)
p "This,line,has,commas,".match(/,/)

