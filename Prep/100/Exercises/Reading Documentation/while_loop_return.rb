a_number = Random.rand(10)

# Random.rand(6...12).times do |i|
#   puts "this is loop #{i + 1}"

#   random_number = Random.rand(10)
#   puts "#{random_number}"
# end

while a_number != 0 do
  puts "the number is #{a_number}"
  a_number =Random.rand(10)
end

puts "program ending ... the number is #{a_number}"