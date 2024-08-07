=begin

P
===
  Write a program that will generate the lyrics of 99 Bottles of Beer.
  The program only deals with class methods.

DS
===
  Class : BeerSong
    + BeerSong::verse(num)
    + BeerSong::verses(start, end)
    + BeerSong::lyrics

NOTES
======
  + count moves down : large to small
  + `99`

ALGORITHM
=========
> BeerSong::lyrics
  +
> BeerSong::verse(num)
  +
> BeerSong::verses(start_num, end_num)


=end

class BeerSong

  def self.verses(start_num, end_num)

  end

  def self.verse(num)
  
  end

  def self.lyrics
    
  end

end

# p (0..99).to_a
# p BeerSong.lyrics.split(/\n\n/)[0]
# puts BeerSong.verse(99)
# puts BeerSong.verses(2, 0)