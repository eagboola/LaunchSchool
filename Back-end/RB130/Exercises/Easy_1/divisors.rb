=begin

  + write a method that, given a positive integer as an argument, returns
    a list of all divisors

=end

def divisors(num)
  1.upto(num).select do |curr|
    num % curr == 0
  end
  
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
