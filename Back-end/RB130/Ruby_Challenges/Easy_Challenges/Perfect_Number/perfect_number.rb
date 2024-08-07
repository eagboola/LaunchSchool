=begin

P
===
  Write a program that determines whether a number is 'perfect', 'abundant', or 'deficient' as defined by Nocomachus.
  The Class should have an instance method that returns a String indicating the classification of the given number.
  If anything but a positive number is passed as an argument, raise `StandardError`.

  + "Aliquot sum" : sum of a numbers positive divisors excluding the number itself
  + "perfect" : number is equal to Aliquot sum
  + "abundant" : Aliquot sum greater than number
  + "deficient" : Aliquot sum less than number


E
===
  `6` => 'perfect'

DS
====
Class : PerfectNumber
  + ::classify
  + helpers : ::divisors

NOTES
=====
  + determine divisors of `number`
    - if a given number between `1` and `number` can divide `number` without any remainder, it is a divisor

AGLORITHM
=========
> PerfectNumber::classify(number)
  + raise `StandardError` unless `number` is greater than `0`
  + generate divisors : select numbers between `1` and `number` (exclusive of `number`) that are valid divisors of `number` -- `number % i == 0`
  + generate `aliquot_sum` -- sum of `divisors`
  + return `'perfect'` if `aliquot_sum` is equal to `number`
  + return `'abundant'` if `aliquot_sum` is greater than `number`
  + return `'deficient'` otherwise -- when `aliquot_sum` is less than `number`

=end

class PerfectNumber

  def self.classify(number)
    raise(StandardError, "Cannot perform classification on non-positive numbers.") unless number > 0

    divisors = (1...number).to_a.select do |i|
      number % i == 0
    end

    aliquot_sum = divisors.sum

    if aliquot_sum > number
      return 'abundant'
    elsif aliquot_sum == number
      return 'perfect'
    elsif aliquot_sum < number
      return 'deficient'
    end
  end

end

p PerfectNumber.classify(10)
# p PerfectNumber.classify(-10)