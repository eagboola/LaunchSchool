=begin

The `Enumerable#any?` processes elements in a collection by passing the value of each element to a block which is provided to the method call.
If the block retrns `truthy` for any element value, the method returns `true` and immediately ceases execution.
Otherwise, `Enumerable#any?` returns `false`.

Write a method, `#any?` that takes an Array and behaves the same way as described above.


PROBLEM
=======
Write a method that takes an Array and a block. It should return `true` and stop execution if any element produces a `truthy` value. It should return `false` otherwise.

  Rule
  -----
  + define method to use a block
  + short-circuit on any `truthy` block return
  + return `false` if `Array` is empty
  + CANNOT USE STANDARD RUBY METHODS : `#all?`, `#any?`, `#none?`, `#one?`

DS
==
Input : Array
  + numbers only?

Intermediate : 

Output : Boolean
  + `true` if any element produces a `truthy` value when passed as an argument to the block
  + `false` otherwise
    - `false` if Array is empty

ALGORITHM
=========
+ return `false` if Array is empty
+ iterate through the Array
  + yield with current element (pass current element as an argument to the block)
  + if yielding produces a `truthy` value,
    - return `true` and top executing
  + otherwise,
    - return `false`


=end

def any?(list)
  # return false if list.empty?

  list.each do |item|
    return true if yield(item)
  end

  false
end

# p any?([1, 3, 5, 6]) { |value| value.even? } == true
# p any?([1, 3, 5, 7]) { |value| value.even? } == false
# p any?([2, 4, 6, 8]) { |value| value.odd? } == false
# p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
# p any?([1, 3, 5, 7]) { |value| true } == true
# p any?([1, 3, 5, 7]) { |value| false } == false
# p any?([]) { |value| true } == false