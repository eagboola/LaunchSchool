=begin
  Write a method that takes a sorted array of integers as an argument, and returns an array that includes all of the missing integers (in order) between the first and last elements of the argument.

    + Iterate from `first` to `last`
      + if input does not include current number, add to new array
    + return new Array
=end
def missing(list)
  # initial solution
  missing_ints = (list.first..list.last).reject do |num|
    list.include?(num)
  end

  # soluetion without blocks
  missing_list = []
  counter = list.first

  while counter < list.last

    if list.include?(counter)
      counter += 1
     next
    else 
      missing_list << counter
      counter += 1
    end

  end

  missing_list
  
end
# Examples:

p missing([-3, -2, 1, 5])  == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4])   == []
p missing([1, 5])   == [2, 3, 4]
p missing([6])   == []
