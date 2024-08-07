=begin

Create two custom methods to demonstrate each of the ways that blocks can be called that you identified in the previous question. For each method, describe what happens when they are invoked with blocks. This description should be specific about what is happening to the block.

=end

def add(n1, n2)
  answer = n1 + n2
  yield(answer) if block_given?

end

add(5, 4) {|ans| puts "The result is #{ans}."}
add(5,4)

def snack(&block)
  puts Time.now
  output(block)
  puts Time.now
end

def output(block)
  block.call("$ ")
end

snack { |pref| puts pref + "shenanigans"}