=begin

What is a block? Create a Ruby method that uses a block and explain what is achieved by utilizing a block in that method.

=end

=begin

In ruby, a Block is a type of closure - a group of enclosed statements. Ruby Blocks are implicit arguments to any method, but how a block uses a method, and if it uses one at all, depend on the method's implementation. A Block is "yielded-to" with the `yield` keyword, where method execution gives way to the provided block. Just like methods, the last line of a Block will be returned.

```Ruby
def times(num)
  i = 0

  while i < num
    yield i if block_given?
  end

  i
end
```

=end

def times(num)
  i = 0

  while i < num
    yield i if block_given?
    i += 1
  end

  i
end

5.times  {|num| puts num }
5. times { puts "Shenanigans!" }
5.times { |num| puts "#{num}.rb" }