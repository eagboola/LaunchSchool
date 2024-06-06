=begin

  Write a method that mimics `Enumerable#drop_while`.

  Rules
  -----
  + takes (1) Array and a block
  + returns an Array containing all elements from input following first to yield a `falsy` block-return (not including that which produced the falsy yield)
  + return an empty Array if input is an empty Array
  + return an empty Array if all elements yield `truthy` values

  NOTES
  =====
  + need to know index position of first value to yield a falsy block-return

  ALGORITHM
  =========
  + iterate over elements in `list`
    + skip `item` if yielding it to the block produces a truthy value
    + if `item` produces a falsy block-return
      - generate and return Array sliced from current position to last (from `list`)

  + return empty Array

=end


def drop_while(list)

  list.each_with_index do |item, i|
    if yield(item)
      next
    else
      return list[i..]
    end
  end

  []

end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []
