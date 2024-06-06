=begin

  Write `#map` to mimic `Enumerable#map`, taking (1) Array and a block.
  It should return a new Array that contains the return values produced by each block call -- yielding with each element.
  If the input Array is empty, `#map` should return an empty Array no matter how the block is defined.
  Only use `#each`, `#each_with_object`, `#each_with_index`, `#reduce`, `#loop`, `for`, `while`, or `until`, but no other iterative methods.

  ALGORITHM
  =========
  + create an empty Array to use as a container(?)
  + iterate through all elements in `list`
    + push result of yielding with current `item` to `container`
  + return `container`

=end

def map(list)

  container = []

  list.each do |item|
    container << yield(item)
  end

  container

end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]
