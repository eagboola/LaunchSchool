=begin

P
===
Write a program that takes a single character String and outputs a Diamond 'up to' that character in the alphabet.
The character's position in the alphabet will inform how many rows the diamond will have. Except for `"A"`, that character will be at the middle row of the diamond.


E
====
1. make_diamond("A")
  => "A\n"

2. make_diamond("B")
  => " A \nB B\n A \n"

     A
    B B
     A

3. make_diamond("C")
  => ""


DS
=====
+ Array of strings
  -each String is a Row
  - each character space is a column


ALGORITHM
=========
+ generate Array of letters from `'A'` to 

NOTES
=====
  + every row ends with a newline -- `"\n"`
  + can build the full diamond in modules, then mirroring around middle row
    - first row <--> last row
    - intermediate top rows <--> intermediate lower rows
    - middle row -- no correlating row

  + all characters except `"A"` will be occur in rows that correlate to their index position
  + could iterate from 

  > some items that must be measured
    > Widths/Columns based on Rows based on 
      + "A" : 1
      + others : (2 * char_index) + 1
    > Blank Spaces
      + total_spaces : width - num_chars
      + side_spaces : total_spaces - (1 += 2)
      + mid_spaces : total_spaces - side_spaces

=end


class Diamond

  def self.make_diamond(char)
    letters = ('A'..char).to_a
    width = (2 * letters.index(char))
    one_char_spaces = width - 1
    two_char_spaces = width - 2
    top_row = "#{two_char_spaces /  2}A#{two_char_spaces / 2}"
    inter_rows = "#{}"
    middle_row = "#{char}#{two_char_spaces}"
  end

  def letters
    ('A'.."#{char}")
  end

end


# p ALPHABET.index('C') # 
# p ALPHABET.index('E') # 
# p Diamond.make_diamond("A")
p "A".succ
# p Diamond.make_diamond("B")
# p Diamond.make_diamond("C")
# p Diamond.make_diamond("E")