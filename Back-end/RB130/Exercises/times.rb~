=begin
  write a method that behaves like `Integer#times`
  + takes an argument
  + loops `arg` many times
  + yields to a block (if given) on each loop
  + returns `arg`
=end

def times(num)
  counter = 0
  
  while counter < num
    yield(counter)
    counter += 1
  end

  num
end

times(5) do |num|
  puts num
end
