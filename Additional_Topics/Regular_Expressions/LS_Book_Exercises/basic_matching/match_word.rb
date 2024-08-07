
=begin

Write a regex that matches the string `"dragon"`.
Test cases:
  'snapdragon'
  'bearded dragon'
  'dragoon'

=end

puts "snapdragon".match(/dragon/) # output : `"dragon"`
puts "bearded dragon".match(/dragon/) # outputs `"dragon"`
p "dragoon".match(/dragon/) # => nil
