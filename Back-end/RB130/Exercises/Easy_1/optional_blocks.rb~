=begin
  Write a method that takes an optional block. 
  If the block is specified, the method should execute it, and return the value returned by the block. 
  If no block is specified, the method should simply return the String 'Does not compute.'.

=end

# Examples:

def compute(operand)
  if block_given?
    return yield(operand)
  else
    return 'Does not compute.'
  end

end


# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute.'
p compute(10) {|num| num + 5}
age = 33
p (compute(age) do |val|
  puts "#{val} years old. Yep! Gettin' old!"
end)
p compute(age)
