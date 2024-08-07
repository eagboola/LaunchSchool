=begin

Write a program to determine whether a given Triangle is equilateral, isosceles, or scalene.
In particular, you are responsible for implementing a Triangle class and any behavior as indicated by the test suite, `triangles_test.rb`.

PROBLEM
=======

  Rules
  -----
    + all sides MUST be greater than `0`
    + the sum of any (2) sides must be greater than the third

DS
==


NOTES
=====
+ `Triangle` needs a constructor that accepts (3) arguments, each a Numeric type representing the length of a side of a triangle
+ `Triangle#kind` returns a string based on the type as determined by the sides
+ an `ArgumentError` should be raised if a `Triangle` is instantiated where any side has a length of `0`
+ an `ArgumentError` should be raised if a `Triangle` is instantiated where (2) sides are not greater than the third
  - iterate over the sides from first to second-to-last
    - iterate from next to last


=end

class Triangle
  attr_reader :sides

  def initialize(a, b, c)        
    @side_a = a
    @side_b = b
    @side_c = c

    @sides = [@side_a, @side_b, @side_c]

    if sides.any? (0)
      raise ArgumentError.new("A triangle cannot have a side of `0` length.")
    elsif sides_less_than_0?
      raise ArgumentError.new("A triangle cannot have a side with negative length.")
    end

    raise ArgumentError.new("Invalid side lengths.") unless valid_sides?
    

  end

  def sides_less_than_0?
    sides.each {|side| return true if side < 0 }
    false
  end

  def valid_sides?
    indices = (0..2).to_a

    (0..1).each do |i|
      cur_side = sides[i]
      (i..2).each do |j|
        rem = indices - [i] - [j]
        suc_side = sides[j]
        return false unless cur_side + suc_side > sides[rem.first]
      end
    end
    true
  end

  def kind
    if equilateral?
      'equilateral'
    elsif isosceles?
      'isosceles'
    elsif scalene?
      'scalene'
    end
  end

  def equilateral?
    sides.each do |side|
      return false if side != sides.first
    end
    true
  end

  def isosceles?
    # any (2) sides have same value
    # iterate over first (2)
      # iterate over remaining
        # return `true` if outer and inner have same value
    # return false
    (0..1).each do |i|
      a = sides[i]

      ((i + 1)..2).each do |j|
        b = sides[j]
        return true if a == b
      end
    end
    false
  end

  def scalene?
    # all (3) are of different lengths
    (0..1).each do |i|
      a = sides[i]

      ((i + 1)..2).each do |j|
        b = sides[j]
        return false if a == b
      end
    end
    true
  end

end