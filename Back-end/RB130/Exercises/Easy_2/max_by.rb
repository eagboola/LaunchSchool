=begin

  + return the element for which the bloc returns the largest value
  + init. `max` to first element
    - only reassign if any subsequent element produces a larger yield value
  + return `nil` if input Array is empty

  ALGORITHM
  =========
  + init. `max` to reference first element
  + iterate over `items` (input list)
    + if yielding current `item` produces a value greater than current value of `max`,
      - reassign `max` to current element

  + return `max`

=end

def max_by(items)

  max = items.first

  items.each do |item|
    max = item if yield(item) > yield(max)
  end

  max

end


p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil
