=begin

Write a method that returns all of the fields i na haphazardly formatted
String. A variety of spaces, tbs, and commas separate the fields, with
possible multiple occurrences of each delimiter.

=end

def fields(str)

  str.split(/[,\t ]+/)

end


p fields("Pete,201,Student")     # ["Pete", "201", "Student"]
p fields("Pete \t 201   ,  TA")  # ["Pete", "201", "TA"]
p fields("Pete \t 201")          # ["Pete", "201"]
p fields("Pete \n 201")          # ["Pete", "\n", "201"]
