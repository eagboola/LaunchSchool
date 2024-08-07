=begin

Write a method that returns `true` if its argument looks like a URL, false
otherwise.

=end

def url?(url)

  url.match(/\Ahttps?:\/\/\S*\z/) ? true : false

end

p url?('https://launchschool.com')     # -> true
p url?('http://example.com')           # -> true
p url?('https://example.com hello')    # -> false
p url?('   https://example.com')       # -> false
