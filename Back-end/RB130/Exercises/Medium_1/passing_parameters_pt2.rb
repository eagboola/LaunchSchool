=begin

  Assignment is very flexible with Arrays in Ruby.
  The entire Array can be assigned to (1) variable.
  Each element can be assigned to separate variables.
  And portions of an Array can be assigned to separate variables using the splay operator (`*`),

  Write a method that takes an Array and yields it to a block.
  The first (2) elements will be ignored and the remaining elements will beassigned to the
    array, `raptors`.

=end

def raptor_list(birds)

  yield(birds)

end

list = %w(raven finch hawk eagle osprey)

raptor_list(list) { |_, _, *birds| puts birds }
