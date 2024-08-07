=begin

  Modify `#bubble_sort` so it takes an optional block that determines which of (2) consecutive elements appears first in the resulting modified array

=end

# given method
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
end

# modified method
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      # if a block provided, sort using block
      if block_given?
        # skip to next iteration if yield to the block with previous and current elements returns a truthy value
        next if yield(array[index - 1], array[index])
      else
        # skip to the next iteration if previous element has value less than or equal to current element
        next if array[index - 1] <= array[index]
      end
      
      # swap positions if execution reaches this far
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    # stop iterating once `swapped` is false
    break unless swapped
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [5, 3, 7]
bubble_sort!(array) { |first, second| first >= second }
p array == [7, 5, 3]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = [6, 12, 27, 22, 14]
bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
p array == [14, 22, 12, 6, 27]

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array)
p array == %w(Kim Pete Tyler alice bonnie rachel sue)

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
p array == %w(alice bonnie Kim Pete rachel sue Tyler)