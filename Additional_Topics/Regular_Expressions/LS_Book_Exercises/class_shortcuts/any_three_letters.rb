=begin

Write a regex tat matches any sequence of (3) letters.

Test strings:
  "The red d0g chases the b1ack cat."
  "a_b c_d""

=end

str = "The red d0g chases the b1ack cat.
  a_b c_d"

# this is the correct pattern. Rubular produces the expected behavior for this exercise.
pattern = /[a-z][a-z][a-z]/i

