=begin

Are `/abc/i` and `/[Aa][Bb][Cc]/` equivalent regex?
If not, how do they differ?
Provide a string that would match for one but not both patterns.

=end

# Yes, the two patterns are equivalent.

pattern1 = /abc/i
pattern2 = /[Aa][Bb][Cc]/

# matches for both patterns
puts "abc".match(pattern1)
puts "abc".match(pattern2)

# matches for both patterns
puts "ABC".match(pattern1)
puts "ABC".match(pattern2)

# matches for both patterns
puts "AbC".match(pattern1)
puts "AbC".match(pattern2)

