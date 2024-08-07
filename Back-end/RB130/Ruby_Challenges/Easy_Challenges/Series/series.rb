=begin

P
===
  Write a program that tkes a String of digits and an Integer specifying a length, and returns all possible consecutive number series of that length in the String.
  Throw an Error if the argument passed for length is larger than the actual length of `digits`.

E
===
  '01234'.slices(3)  => [[0, 1, 2], [1, 2, 3], [2, 3, 4]]
  [0, 1, 2, 3, 4]
    [0, 1, 2]
    [1, 2, 3]
    [2, 3, 4]

  '01234'.slices(4)  => [[0, 1, 2, 3], [1, 2, 3, 4]]
  
  slices from `(0..length - n)`

DS
===
Class : Series
  + constructor
    - String param : `digits`
  + Series#slices(slice_length)
    - return : Array
    - raise `ArgumentError` if `slice_length` greater than length of `digits`

ALGORITHM
=========
> Series#slices(slice_length)
  + raise `ArgumentError` if `slice_length` is greater than length of `digits`
  + transform Array of Integers from `0` to `digits.length - slice_length`; `num`
    + generate Array of Integers (1) at a time -- iterate from `num` to `num...slice_length`
  

=end

class Series
  attr_reader :digits

  def initialize(digits)
    @digits = digits
  end

  def slices(slice_length)
    raise (ArgumentError) if slice_length > digits.length
    
    (0..(digits.length - slice_length)).to_a.map do |i|
      nums = []
      (i...(i + slice_length)).to_a.each do |j|
        nums << digits[j].to_i
      end
      nums
    end
  end

end

# p Series.new('01234').slices(3)
# p Series.new('982347').slices(3)