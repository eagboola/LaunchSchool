=begin

Write a regex that matches HTML g1 header tags, `<h1>...</h1>,
and the content between the opening and closing tags.
If multiple header tags appear on a single line, the regex should
match the opening and closing tags and the text content of the headers,
but nothing else.
Assume there are no nexted tags in the text between `<h1>` and `</h1>`.

=end

str = "<h1>Main Heading</h1>
<h1>Another Main Heading</h1>
<h1>ABC</h1> <p>Paragraph</p> <h1>DEF</h1><p>Done</p>"

# first attempt
pattern1 = /<h1>[\w ]*<\/h1>/

# solution modified to make use of 'lazy' quantifier
pattern2 = /<h1>.*?<\/h1>/

matches1 = str.scan(pattern1)
matches2 = str.scan(pattern2)

p matches1
p matches2
