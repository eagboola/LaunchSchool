require_relative 'iterators_true_for_all'
require_relative 'iterators_true_for_any'

=begin

PROBLEM
=======
Write a method, `#none?`, that takes an Array. 
If yielding with any element produces `true`, return `false`.
Otherwise, return `true`.

  Rules
  -----
    + short-circuit behavior on returning `false`
    + return `true` if block returns `false` for all elements
    + return `true` if the Array is empty
    + CANNOT USE `Array` or `Enumerable` methods : `all?`, `any?`, `non?`, `one?`
    + can require_relative `iterators_true_for_all` and/or `iterators_true_for_any`

ALGORITHM
=========
+ iterate through items
  + if yielding the item produces `true`,
    - return `false`

+ otherwise,
  - return `true`

=end

def none?(list)
  list.each do |item|
    return false if yield(item)
  end

  true

end


p none?([1, 3, 5, 6]) { |value| value.even? } == false
p none?([1, 3, 5, 7]) { |value| value.even? } == true
p none?([2, 4, 6, 8]) { |value| value.odd? } == true
p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p none?([1, 3, 5, 7]) { |value| true } == false
p none?([1, 3, 5, 7]) { |value| false } == true
p none?([]) { |value| true } == true