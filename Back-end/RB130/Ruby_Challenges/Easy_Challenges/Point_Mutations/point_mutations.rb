=begin

Write a program that can calculate the Hamming Distance between (2) DNA strands.
A point mutation occurs where (1) base is replaced by another at single nucleotide.
Hamming Distance is the number of differences between (2) homolod;lskdjvgous DNA strands taken from different genomes with a common ancestor, which measures the minimum number of point mutations that could have occurred on the evolutionary path between the (2) strands.
It's important to note that the with sequences of differing length, the Hamming Distance must be calculated over the shorter length.


In the example below, the Hamming Distance is `7` -- (7) differences exist between the (2) sequences.

    GAGCCTACTAACGGGAT
    CATCGTAATGACGGCCT
    ^ ^ ^  ^ ^    ^^

=end


=begin
PEDAC
=====
Write a `DNA` class that has the ability to calculate Hamming Distance with a String representing another DNA sequence.

  Rules
  -----
  > Constructor
    + takes (1) argument : String
  
  > `#hamming_distance`
    + takes a String argument
    + if (2) DNA Objects have different lengths, calculate Hamming Distance over shorter length
    + return an Integer : the number of differences between the (2) sequences
    + do not mutate the calling `DNA` Object

DS
==

NOTES
=====
=end

class DNA
  attr_reader :sequence

  def initialize(seq)
    @sequence = seq
  end

  def hamming_distance(other_seq)
    max_i = sequence.length > other_seq.length ? other_seq.length : sequence.length

    count = 0

    (0...max_i).each do |i|
      # check both sequences simultanesouly
      # increment `count` by `1` unless both `points` have same value
      point_a = sequence[i]
      point_b = other_seq[i]

      count += 1 if point_a != point_b
    end

    count

  end
end