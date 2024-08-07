=begin

This exercise has multiple parts.

1. Write a method that changes the first arithmetic operator (`+`, `-`, `*`, `/`)
in a String to `"?"`. Return the resulting String. Do not modify the input String.

2. Write a method that changes every aritmetic operator to `"?"` and returns
   the resulting String without modifying the input String.

=end

def mystery_math(phrase)

  phrase.sub(/[\*\+-\/]/, '?')
end

def mysterious_math(phrase)
  phrase.gsub(/[\+\*-\/]/, '?')
end

p mystery_math('4 + 3 - 5 = 2') == '4 ? 3 - 5 = 2'
p mystery_math('(4 * 3 + 2) / 7 - 1 = 1') ==  '(4 ? 3 + 2) / 7 - 1 = 1'

p mysterious_math('4 + 3 - 5 = 2') == '4 ? 3 ? 5 = 2'
p mysterious_math('(4 * 3 + 2) / 7 - 1 = 1') == '(4 ? 3 ? 2) ? 7 ? 1 = 1'
