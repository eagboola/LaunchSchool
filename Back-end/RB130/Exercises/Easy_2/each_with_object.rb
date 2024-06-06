=begin

  Write a method to mimic `Enumerable#each_with_object`, that takes an Array, some collection object, and a block.
  It should yield each element and the `memo` to the block and return the final value of the `memo`.
  
  
  Rules
  -----
  + value returned by the block is not used
  + with each iteration, the `memo` object may be updated by the block
  + final value of `memo` is returned
  + if input Array is empty, return the `memo`


  NOTES
  =====
  + yield current elemnt and `memo` to the block on each iteration
  + 


  ALGORITHM
  =========
  + iterate through `items`
  + yield `item` and `memo` to the block
  + return the `memo`

=end

def each_with_object(items, memo)

  items.each do |item|
    yield(item, memo)
  end

  memo

end

result = each_with_object([1, 3, 5], []) do |value, list|
    list << value**2
end
p result == [1, 9, 25]

result = each_with_object([1, 3, 5], []) do |value, list|
    list << (1..value).to_a
end
p result == [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

result = each_with_object([1, 3, 5], {}) do |value, hash|
    hash[value] = value**2
end
p result == { 1 => 1, 3 => 9, 5 => 25 }

result = each_with_object([], {}) do |value, hash|
    hash[value] = value * 2
end
p result == {}
