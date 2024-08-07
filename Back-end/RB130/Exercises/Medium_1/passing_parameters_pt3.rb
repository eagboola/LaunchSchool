=begin

  Given the provided code, fill out the method calls so they produce the expected results.

=end

# starting code
items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
    puts "Let's start gathering food."
    yield(items)
    puts "We've finished gathering!"
end

# 1.
# gather(items) do | *list, wheat|
#   puts list.join(', ')
#   puts wheat
# end

# => 
# Let's start gatehering food.
# apples, corn, cabbae
# wheat
# We've finished gathering!

# 2.
# gather(items) do | apples, *list, wheat|
#   puts apples
#   puts list.join(', ')
#   puts wheat
# end

# => Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

# 3.
# gather(items) do | apples, *list|
#   puts apples
#   puts list.join(', ')
# end

# => Let's start gethering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

# 4.
# gather(items) do | apples, corn, cabbage, wheat |
#   # puts items.join(', ')
#   puts "#{apples}, #{corn}, #{cabbage}, #{wheat}"
# end

# =>
# Let's start gathering food.
# apples, corn, cabbage, and wheat.
# We've finished gathering!
