=begin

Are `/(ABC|abc)/` and `/[Aa][Bb][Cc]/` equivalent regex?
If not, how do they differ?
Provide an example string that would match one but not both regex.

=end

# No, these are not equivalent regex.
# The first pattern will match with any substring, `"ABC"` or `"abc"`.
# The second pattern will match to any substring where the first character is an
# uppercase or lowercase "A", the second character is an uppercase or lowercase "B",
# and the third character is an uppercase or lowercase "C".

pattern1 = /(ABC|abc)/
pattern2 = /[aA][bB][cC]/

# matches for both patterns
puts "ABC".match(pattern1)  
puts "ABC".match(pattern2)

# matches for both patterns
puts "abc".match(pattern1)
puts "abc".match(pattern2)

# matches for second pattern only
p "AbC".match(pattern1)  # => `nil`
p "AbC".match(pattern2)  # => `#<MatchData "AbC">`
