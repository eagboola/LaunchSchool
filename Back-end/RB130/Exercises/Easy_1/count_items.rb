=begin

PROBLEM
=======
Write a method, `#count`, that takes an Array and utilizes a block.
It returns the number of times the block returns `true`.

  Rules
  -----
  + CANNOT USE : `Array#count`, `Enumerable#count`
  + if Array is empty, return `0`

ALGORITHM
=========
+ initialize `count` to `0`
+ iterate over `list` keeping count of `true` block-returns
  + if yielding current `item` returns `true`,
    - increment `count` by `1`

+ return `count`

=end

def count(list)

  count = 0

  list.each do |item|
    count += 1 if yield(item)
  end

  count

end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2