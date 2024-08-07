=begin

P
===
Given a natural number (positive integer), `ceiling`, and a set of (1) or more Integers, determine all multiples of each set_numbers that have a value less than `ceiling`. Return the sum of those multiples.
Determine all multiples up to ceiling for each set_number, return sum of valid_multiples.
If no set is provided, default to a set of (3) and (5).


E
===
  to(4) => 3
  list : [3, 5]
  valid_multiples(3) => [3]
  valid_multiples(5) => []
  sum : 3

  to(10) => 23
  list : [3, 5]
  valid_multiples(3, 5) : [3, 6, 9, 5]
  sum : 23


DS
===
Class : SumOfMultiples
  + instantiate with multiple numbers
    - Array thingy...
  + SumOfMultiples#to(ceiling)
  + SumOfMultiples::to(ceiling)


ALGORITHM
=========
> SumOfMultiples::to(ceiling) -- first
  + generate default `numbers` Array -- `[3, 5]`
  + init. `multiples` to empty Array
  + iterate over `numbers`
    + initialize `multiple` to current `number`
    + iterate until `multiple` is greater than `ceiling`
      - break if `multiple` > `ceiling`
      - push `multiple` to `multiples`
      - increment `multiple` by `number`
  + return sum of `multiples`

> SumOfMultiples::to(ceiling) -- second, transformation
  + generate default `numbers` Array -- `[3, 5]`
  + transform `numbers` to generate nested Array of multiples
    + selection -- iterate over numbers between `0` and `ceiling`, exclusive
      - include if current `i` is a multiple of `number`
  + flatten `multiples` and return sum

> SumOfMultiples#to(ceiling)
  + transform `numbers` (Array from instantiation) to generate nested Array `multiples`
    - select multiples of current `number` from Array of Integers between `0` and `ceiling`, exclusive
  + flatten `multiples` and return sum of unique values

=end

class SumOfMultiples
  attr_reader :numbers

  def initialize(*numbers)
    @numbers = numbers
  end

  def self.to(ceiling)
    numbers = [3, 5]
    # multiples = []

    # numbers.each do |number|
    #   multiple = 0

    #   while multiple < ceiling
    #     multiples << multiple
    #     multiple += number
    #   end
    # end

    multiples = numbers.map do |number|
      (0...ceiling).to_a.select do |multiple|
        multiple % number == 0
      end
    end
    
    multiples.flatten.uniq.sum
  end

  def to(ceiling)
    multiples = numbers.map do |number|
      (0...ceiling).to_a.select { |i| i % number == 0 }
    end

    multiples.flatten.uniq.sum
  end

end

# p SumOfMultiples.to(1)
# p SumOfMultiples.to(4)
# p SumOfMultiples.new(7, 13, 17).to(20)
# p SumOfMultiples.new(4, 6).to(15)