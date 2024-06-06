=begin

PROBLEM
=======
Write a method, `#all?`, that takes an Array and returns `true` if all element values produce `truthy` block returns.

  Rules
  -----
  + if (1) element produces a `false` block return, the method returns `false` and stops
  + return `true` if all elements produce a `truthy` block call
  + return `true` if Array is empty

ALGORITHM
=========
+ iterate over all elements
  + yield with current element
  + if yielding produces a `falsy` value, 
    - return `false` and end method execution

+ return `true` if possible to iterate over all elements

=end

def all?(list)
  list.each do |item|
    return false unless yield(item)
  end

  true
end

# p all?([1, 3, 5, 6]) { |value| value.odd? } == false
# p all?([1, 3, 5, 7]) { |value| value.odd? } == true
# p all?([2, 4, 6, 8]) { |value| value.even? } == true
# p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
# p all?([1, 3, 5, 7]) { |value| true } == true
# p all?([1, 3, 5, 7]) { |value| false } == false
# p all?([]) { |value| false } == true  