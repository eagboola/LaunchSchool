=begin

This exercise has multiple parts.

1. Write a regex that matches any line of text containing nothing but
a URL, where a URL begins with `"http://"` or `"https://"`, and
continues until it detects a whitespace character of end of line.

2. Modify the solution so the URL can have optional leading or trailing
   whitespace, but is otherwise on a line by itself.
   Add some spaces to the end of some lines to test this.

3. Modify the solution so the URL can appear anywhere on each line as
   long as it begins at a word boundary.

=end

str = "
https://launchschool.com/
https://launchschool.com/     
http://mail.google.com/mail/u/0/#inbox
http://mail.google.com/mail/u/0/#inbox      
htpps://example.com
Go to http://launchschool.com/
https://user.example.com/a.cgi?a=p&c=0 hello
    https://launchschool.com/"

pattern1 = /^https?:\/\/\S*$/
pattern2 = /^\s*https?:\/\/\S*\s*$/
pattern3 = /\bhttps?:\/\/\S*/

matches1 = str.scan(pattern1)
matches2 = str.scan(pattern2)
matches3 = str.scan(pattern2)

p matches1
p matches2
p matches3
