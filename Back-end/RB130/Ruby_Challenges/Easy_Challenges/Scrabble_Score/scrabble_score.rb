=begin

P
===
  Write a program that computes the Scrabble score for a given word.

DS
===
  Class : Scrabble
    + getters:
      - #word
    + constructor
      - param : String, `word`
    + #score
      - no params
      - return `0` if `word` is not a String
    + ::score
      - String param, `word`
      - call `Scrabble#score` on new instance, `Scrabble.new(word)`


NOTES
=====
  + scoring case-insensitive -- 'b' == 'B'
  + 

ALGORITHM
=========
> Scrabble#score
  + return `0` if `word` is not an instance of String class
  + transform characters of downcase version of `word` to generate `total`
    + iterate over all keys && values in `SCORES`
      - init. `char_score` to `0`
      - if outer character is included in current value,
        - reassign `char_score` to the current key
      - return `char_score`
  + sum `total` and return

> Scrabble::score(word)
  + return resolved value of instantiating new Scrabble object and calling #score on that instance


CABBAGE : [c, a, b, b, a, g, e]
score   : [3, 1, 3, 3, 1, 2, 1]


=end

class Scrabble

  SCORES = {
    1 => %w(a e i o u l n r s t),
    2 => %w(d g),
    3 => %w(b c m p),
    4 => %w(f h v w y),
    5 => %w(k),
    8 => %w(j x),
    10 => %w(q z)
  }

  attr_reader :word

  def self.score(word)
    self.new(word).score
  end

  def initialize(word)
    @word = word
  end

  def score
    return 0 if word.class != String
    word_score = word.downcase.chars.map do |char|
      char_score = 0
      SCORES.each do |k, v|
        char_score = k if v.include?(char)
      end
      char_score
    end
    word_score.sum
  end

end

# p Scrabble::SCORES[1].include?('a')
# p Scrabble.new('CABBAGE').score
# p Scrabble.score('CABBAGE')