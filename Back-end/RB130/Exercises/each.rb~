=begin

  write a method that behaves like `Array#each`

  + takes an Array
  + iterates over succssive elements
    - executes block once for current element
  + returns the Array argument

=end

def each(arr)

  counter = 0

  while counter < arr.length
    yield arr[counter]
    counter += 1
  end

  arr
end

each([1, 2, 3, 4, 5]) do |num|
  puts num
end
