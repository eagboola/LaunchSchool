=begin

This exercise has multiple parts.

1. Write a regex that matches lines of text that contain at least (3)
   and no more than (6) consecutive comma separated numbers.
   Assume that every number on each line is both preceded and followed
   by a comma.

2. For this solution, assume that the first number on each line is *not*
   preceded by a comma, and the last number is *not* followed by a comma.

3. For this solution, write a regex that matches lines of text that contain
   either (3) comma separated numbers or (6) or more comma separated numbers.

=end

str1 = ",123,456,789,123,345,
,123,456,,789,123,
,23,56,7,
,13,45,78,23,45,34,
,13,45,78,23,45,34,56,"

str2 = "123,456,789,123,345
123,456,,789,123
23,56,7
13,45,78,23,45,34
13,45,78,23,45,34,56"

pattern1 = /^,(\d+,){3,6}$/
pattern2 = /^(\d+,){2,5}\d+$/
pattern3 = /^((\d+,){2}\d+|(\d+,){5,}\d+)$/

matches1 = str1.scan(pattern1)
matches2 = str2.scan(pattern2)
matches3 = str2.scan(pattern3)

p matches1
p matches2
p matches3
