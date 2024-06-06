=begin

PROBLEM
=======
Write a method, `#one?`, that returns `true` if exactly (1) element produces a `truthy` block-return.

  Rules
  -----
  + short-circuit behavior when any second item produces a `truthy` block-return
  
ALGORITHM
=========
+ return `false` if `list` is empty
+ iterate through `list` while counting number of `truthy` block-returns
  + if `count` is greater than `2`,
    - return `false`
  + if yielding with current element produces a `truthy` value
    - increment `count` by `1`

+ if `count` is `1`,
  - return `true`
+ otherwise,
  - return `false`
=end

def one?(list)
  count = 0

  # return false if list.empty?

  list.each do |item|
    return false if count > 1
    count += 1 if yield(item)
  end

  # if count == 1
  #   true
  # else
  #   false
  # end

  count == 1 ? true : false
end

p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one?([1, 3, 5, 7]) { |value| true }           # -> false
p one?([1, 3, 5, 7]) { |value| false }          # -> false
p one?([]) { |value| true }                     # -> false