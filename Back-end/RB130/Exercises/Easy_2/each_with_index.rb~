=begin

  Write a method that mimics `Enumerable#each_with_index`, taking an Array and a block.
  It should yield each element and that element's index position to the block, and return a reference to the input Array.

  ALGORITHM
  =========
  + generate list of `positions`
  + iterate through `positions`
    + generate `current` to reference element `input` at `position`
    + yield `current` and `position` to the block
  + return `input`

=end

def each_with_index(list)
  positions = (0...list.length)

  positions.each do |position|
    current_item = list[position]

    yield(current_item, position)

  end

  list

end

result = each_with_index([1, 3, 6]) do |value, index|
    puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]

# 0 -> 1
# 1 -> 3
# 2 -> 36
# true
