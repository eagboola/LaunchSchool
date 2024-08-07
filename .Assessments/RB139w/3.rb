=begin

We want this method to output the answer if a block is passed during method invocation, but we also don't want an error if no block is passed. Why isn't this method working as expected? Why does the invocation on line 6 not raise an error? Fix the code so that it works as designed (you can ignore the return value of square).

=end

# def square (num)
#   answer = num * num
# end

# square(4)
# square(4) { |answer| puts answer } # => outputs 16

def square (num)
  answer = num * num

  if block_given?
    yield(answer)
  else
    answer
  end

end

square(4)
square(4) #{ |answer| puts answer } # => outputs 16