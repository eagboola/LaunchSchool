=begin

  PEDAC
  =====
  Write a program that converts decimal number to Roman Numerals.
  Roman Numerals are written by expressing each digit separately starting with the left-most digit and skipping any digit with a value of `0`.
    
    Rules
    -----
      + map according to the key
      + 

  EXAMPLES
  ========
  `1990`  : [0, 9, 9, 1]
  'MCMXC'


  `2000`
  'MM'

  DS
  ==
  > Constructor
    + takes (1) Integer argument

  > `#to_roman`
    + no arguments (no parameters in definition)

  NOTES
  =====
    + determine the Integer at a given digit-location
    + skip if value is `0`
    > Array of digits
      + index in the Array dictates decimal position -- thousands, hundred, tens, ones
      + element's value dictates the numeral transformation/substitution
      + could map all digit values for each decimal position using index position of number to determine decimal position of the numeral


  ALGORITHM
  =========
  + generate `NUMERALS` hash
    + keys : decimal digits
    + values : Arrays of Strings
      - Strings : Roman Numerals
  
  > `#to_roman`
    + generate an array of digits from input Integer in reverse order, `num`
    + transform `digits` to generate Array, `numerals` by iterating over each digit with index
      - if `digit` is `0`, return empty string, `''`
      - use symbol version of `digit` and index position to generate `numeral` using `KEY`
    + reverse `numerals` and join

[_, _, _, _]
 0  1  2  3

 i : `0`

=end

NUMERALS = {
  1 => ['I', 'X', 'C', 'M'],
  2 => ['II', 'XX', 'CC', 'MM'],
  3 => ['III', 'XXX', 'CCC', 'MMM'],
  4 => ['IV', 'XL', 'CD'],
  5 => ['V', 'L', 'D'],
  6 => ['VI', 'LX', 'DC'],
  7 => ['VII', 'LXX', 'DCC'],
  8 => ['VIII', 'LXXX', 'DCCC'],
  9 => ['IX', 'XC', 'CM']
  #0 => ['']  # `#{2 * sym}` ?
  }

class RomanNumeral
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def to_roman
    digits = num.digits

    numerals = digits.map.with_index do |digit, i|
      if digit == 0
        ''
      else
        numeral = NUMERALS[digit][i]
      end
    end
    numerals.reverse.join
  end

end


p RomanNumeral.new(1990).to_roman # => 'MCMXC'
p RomanNumeral.new(0).to_roman
p RomanNumeral.new(2008).to_roman # => 'MMVII

