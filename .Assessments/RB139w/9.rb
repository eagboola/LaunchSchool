=begin

There is a shorthand syntax we can use to rewrite the following code. What is it called? Show how you would rewrite this to take advantage of it.

=end

p ['a', 'b', 'c', 'd'].each { |element| element.to_sym }

p ['a', 'b', 'c', 'd'].each(&:to_sym)