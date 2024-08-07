=begin

With reference to closure and its binding, explain why the first code snippet outputs "Spotty socks", whilst the second code snippet raises an error.


=end

def spotty_method
  yield
end

footwear = "Spotty socks"

spotty_method do
  puts footwear
end                 # => outputs "Spotty socks"


def stripey_method
  yield
  puts footwear
end

stripey_method do
  footwear = "Stripey socks"
end                 # => raises an error