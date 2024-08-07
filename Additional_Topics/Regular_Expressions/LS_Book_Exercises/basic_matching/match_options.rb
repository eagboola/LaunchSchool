=begin

Write a regex that matches any of the following fruits:: banana, orange, apple, strawberry.
The fruits may appear in other words.

Test cases:
  'banana'
  'orange'
  'pineapples'
  'strawberry'
  'raspberry'
  'grappler'

=end

fruits = %w(banana orange pineapples strawberry raspberry grappler)
match_words = /banana|orange|apple|strawberry/

# the following regex will search for any character within the multiple options
fruits.each do |fruit|
  puts fruit.match(/[banana|orange|apple|strawberry]/)
end

# the following regex will search for any substring that matches a subpattern as defined above
fruits.each do |fruit|
  puts  fruit.match(match_words)
end
