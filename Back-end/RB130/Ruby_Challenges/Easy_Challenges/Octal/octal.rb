=begin

P
===
  Write a program that returns the decimal equivalent of a given octal.
  Octal is a base-8 numbering system. (Decimal is base-10). A Decimal number is composed of the individual digits multiplied by 10 raised to the power of the digit's position in the number (starting with 0 for the ones place, 1 for the tens place, etc.). An Octal follows the same structure, but the digits are multiplied by `8` to the power of the digit's position, and can only consist of the digits `0...8` == `0..7`

E
===
 octal `233`
 digits : [3, 3, 2]
 decimal conversion : (3 * 8 ^ 0) + (3 * 8 ^ 1) + (2 * 8 ^ 2) == 3 + 24 + 128
 decimal value : 155


DS
====
Class : Octal
  + constructor
    - param : String version of number
  + Octal#to_decimal
    - no params
    - returns Integer
  + Octal#valid_octal?
    - generate array of valid Integers (`0..7)` converted to Strings
    - iterate over characters in `input`
      - return `false` if `valid_ints` does not include current `char`

ALGORITHM
=========
> Octal#to_decimal
  + return `0` if `input` is not valid (use `#valid_octal?`)
  + convert input String to an Integer
  + generate `digits` Array from converted Integer
  + transform `digits` to generate `decimal_values` by iterating with index positions, `i`
    - return (to method) `digit * (8 ^ i)`
  + sum `decimal_values` and return

  
NOTES
======
  + Invalid input is equivalent to `octal 0`
    - return `0` if `input contains anything other than the Integers `0..7`
  + do not use built-ins to convert from octal to decimal

=end

class Octal

  VALID_INTS = (0..7).to_a.map(&:to_s)

  attr_reader :octal_str

  def initialize(octal_str)
    @octal_str = octal_str
  end

  def to_decimal
    return 0 unless self.valid_octal?
    
    digits = octal_num.digits
    decimal_values = digits.map.with_index do |digit, i|
      digit * (8 ** i)
    end
    decimal_values.sum
  end

  def octal_num
    self.octal_str.to_i
  end

  private

  def valid_octal?
    # octal_str.chars.all? do |char|
    #   VALID_INTS.include?(char)
    # end

    # octal_str.chars.each do |char|
    #   return false if !self.class::VALID_INTS.include?(char)
    # end

    # true

    octal_str.chars.all? {|n| n =~ /[0-7]/}
  end

end

# p Octal.new('9').to_decimal
# p Octal.new('12').to_decimal