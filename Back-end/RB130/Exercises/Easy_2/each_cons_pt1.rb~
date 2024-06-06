=begin
  
  Write a method that mimics `Enumerable#each_cons`.
  It should take an Array and a block, and yields (2) consecutive elements at a time for `n` many iterations.
  That is, it yields pairs to the block beginning with first element and ending with 2nd-to-last.
  The method returns `nil`.

=end

def each_cons(items)

  (0..items.length - 2).each do |i|
    yield(items[i], items[i + 1])
  end

  nil

end


hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
    hash[value1] = value2
end
result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
    hash[value1] = value2
end
hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
    hash[value1] = value2
end
hash == {'a' => 'b'}
p result == nil
