=begin

  `Range#step` iterates over a Range of values where each value is the previous plus the `step` value, and returns the original range.

  PROBLEM
  =======
  Write a method that operates in the same way as `Range#step` without being called on a Range.
  The method should take (3) arguments : the starting value, the end value, and the `step` value.
  The method should take a block which will be called on successive iteration values.

  ALGORITHM
  =========
  + init. `count` --> `start``
  + iterate as long as `count` < `stop`
    + yield `count` to the block
    + increment `count` by `step`
  + return ...


=end

def step(start, stop, step)
  
  count = start

  # while count <= stop
  #   yield(count)
  #   count += step
  # end

  loop do
    yield(count)
    break if count + step > stop
    count += step
  end
  
  count

end

step(1, 10, 3) { |value| puts "value = #{value}" }

# value = 1
# value = 4
# value = 7
# value = 10
