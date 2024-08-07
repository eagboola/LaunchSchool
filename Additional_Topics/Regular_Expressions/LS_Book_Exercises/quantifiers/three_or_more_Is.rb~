=begin

Write a regex that matches any word that contains at least (3)
occurrences of the `"i"`.
For this exercise, `"0minimize7"` is not considered a word.

=end

str = "Mississippi
ziti 0minimize7
inviting illegal iridium"

pattern1 = /\b[a-z]*i[a-z]*i[a-z]*i[a-z]*\b/i
pattern2 = /\b([a-z]*i){3}[a-z]*\b/i
pattern3 = /\b([a-z]*i+){3,}[a-z]*\b/i

matches1 = str.scan(pattern1)
matches2 = str.scan(pattern2)
matches3 = str.scan(pattern3)

p matches1
p matches2
p matches3
