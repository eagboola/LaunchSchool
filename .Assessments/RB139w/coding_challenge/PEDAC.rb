=begin

Your program should pass all tests shown below. You may add more tests if you wish, but please do not change any of the existing tests.
We grade your program based on passing tests, Rubocop, and on your code.
Upload your code in the text box below. Don't forget to format your code!

=end

=begin

P
====
  Given (2) String, search within `str1` for "Decreasing Substrings" contained within both Strings.
  Insert these Substrings, by order of appearance, into a copy o `str1`.`
  +

  > "Decreasing Substrings":
    + (3) characters long
    + "characters with ASCII values that decrease by index" == "characters that come earlier in the alphabet / ASCII table"
      - character at `i` has a lower ASCII index than character at `i - 1`
      - successive characters must have successively lower ASCII values

E
===
str1 : "volcano"
      chars :           [v, o, l, c, a, n, o]
      ord_vals :        [118, 111, 108, 99, 97, 110, 111]
      decreasing_ords:  [118, 11, 108], [111, 108, 99], [108, 99, 97]
                        [v, o, l], [o, l, c], [l, c, a]

str2 : "macroevolutions"
=> "volvolcano"

DS
=====
> Parallax
  + Parallax::shift(str1, str2)
    - always return a String
    - decreasing_substrings are inserted before and after original `str1`
      - first half before && second half after?

NOTES
=====
  + insert "DecSubs" into COPY of `str1` -- don't mutate, return New String
  + can use `String#ord` to determine ASCII value of character
  + new String building...
    - not alphabetical?
    - based on position in `str2`?
      - need to keep track of starting index of each valid_decreasing_substring
  + spaces (`" "`) count as valid single character substrings
  + all lowercase
> building new String
    + if list is empty,
      - return copy of str1
    + insert at front and back in alternating order
      - insert at front if even
      - insert at end if odd

ALGORITHM
=========
  + generate Array of Characters from `str1`
  + transform `characters` to generate Array of ordinal_codes
  + select all (3) character sequences of ordinal with characters in successively decreasing / earlier order of appearance in ASCII table to generate `candidates`
    - iterate from first until third-to-last character in `str1`
  + select `candidates` that appear in `str2` to generate `valid_subtrs`
  + build new String
    -

=end