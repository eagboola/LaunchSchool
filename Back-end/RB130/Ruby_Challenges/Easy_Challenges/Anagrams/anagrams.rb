=begin

  P
  ===
  Write a program that takes a word and a list of possible anagrams and selects the correct sublist that contains anagrams of the word.


  E
  ===
  Anagram.new('listen').match(%w(enlists google inlets banana)) # => `['inlets']`
  

  DS
  ===
  > Class : Anagram
    + getters : #target
    #constructor
      + takes a String, `target`
    #match
      + in :  Array of Strings, `words`
      + return : Array of Strings, `matches`

  NOTES
  =====
    + anagrams are case-insensitive
    

  ALGORITHM
  =========
    #match
      + in :  Array of Strings, `words`
        + generate tally of letters in `target`
        + select `words` to generate Array of `matches`
          - generate tally of letters in `word`
          - add `word` to selection Array if downcase version of `target_tally` is equivalent to downcase version `word_tally`
      + return : Array of Strings, `matches`

=end

class Anagram
  attr_reader :target

  def initialize(target)
    @target = target
  end

  def match(words)
    target_tally = target.downcase.chars.tally
    matches = words.select do |word|
      word_tally = word.downcase.chars.tally
      next if word.downcase == target.downcase
      word if word_tally == target_tally
    end
  end

end

# p Anagram.new('listen').match(%w(enlists google inlets banana))