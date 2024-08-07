=begin
  
  Modify the given code so the output of `items` is in a block, giving those who would use
    `#gather` the opportunity to decide implementation at invocation time.


=end

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
    puts "Let's start gathering food."
    yield(items)
    puts "Nice selection of food we have gathered!"
end

gather(items) { |produce| puts "#{items.join(', ')}" }
