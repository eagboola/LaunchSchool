=begin

Write a regex that matches an uppercase `K`.
Test Cases:
  "Kx"
  "BlacK"
  "kelly"

=end

puts "Kx".match(/K/)      # => `#<MatchData "K">`
puts "BlacK".match(/K/)   # => `#<MatchData "K">`
puts "kelly".match(/K/)   # => `nil`
