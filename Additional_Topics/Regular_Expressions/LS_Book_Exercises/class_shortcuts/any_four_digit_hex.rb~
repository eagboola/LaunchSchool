=begin

Write a regex that matches any four digit hexadecimal number that is 
both preceded and followed by whitespace.
Note that `0x1234` is not a hexadeciman in this exercise -- there is 
no space before the number `1234`.

Test Strings:
  "Hello 4567 bye CDEF - cdef
  0x1234 0x5678 0xABCD
  1F8A done"

Hexadecimal
-----------
This system uses (16) distinct symbols, most often `0` - `9` and
`"A"` - `"F"`, where the decimal digits represent the values (0) through
(9) and the letters represent the values (10) through (15).

In programming, there are several notations to denote hexadecimal 
numbers, usually written as prefixes. The prefix `0x` is used in the
C language, so `0x8DFB` would be the hex value `8DFB` == 36, 347.

0..9 : 0..9
   A : 10
   B : 11
   C : 12
   D : 13
   E : 14
   F : 15

219 (decimal) == DB
decimal : (9 * 10^0) + (1 * 10^1) + (2 * 10^2) == 9 + 10 + 200 == 291
    hex : (11 * 16 ^ 0) + (13 * 16 ^ 1) == 11 + 208 == 219 
=end

str = "Hello 4567 bye CDEF - cdef
0x1234 0x5678 0xABCD
1F8A done"

pattern = /\s[\dA-F][\dA-F][\dA-F][\dA-F]\s/i
pattern2 = /\s\h\h\h\h\s/

matches = str.scan(pattern)
matches2 = str.scan(pattern2)

p matches
p matches2
