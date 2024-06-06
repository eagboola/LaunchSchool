=begin
  
  `Array#zip` combines (2) Arrays into an Array of 2-element su-Arrays, where the sub-Array elements are elements at the same index positions from the original (2) Arrays.

  PROBLEM
  =======
  Write a method that mimics `Array#zip`, taking (2) arguments and returns a new Array without mutating the inputs.

  Rules
  -----
    + CANNOT USE `Array#zip`
    + assume input Arrays are of same length

  ALGORITHM
  =========
  + init. `zip_array` --> `[]`
  + iterate over all index positions - `0` through `input.length`
    + push Array contaiing element at current position from both Arrays to `zip_array`
  + return `zip_array`

=end

def zip(list1, list2)

  zip_list = []

  (0...list1.length).each do |pos|
   sub_arr = list1[pos], list2[pos]
  zip_list << sub_arr 

  end

  zip_list

end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
