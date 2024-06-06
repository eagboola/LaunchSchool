=begin

  write a method that mimics `Array#select`

  + takes an Array and a block
  + yields each element to the block
  + if block returns truthy, include element in new Array
  + return new Array

=end

def select(list)

  counter = 0
  selections = []

  while counter < list.length
    current_el = list[counter]

    selections << current_el if yield(current_el)

    counter += 1
  end

  selections
end

array = (1..5).to_a

p select(array) {|num| num.odd?}
p select(array) {|num| puts num}
p select(array) {|num| num + 1}
