require "pry-byebug"

=begin

start : ~12:10 ??

P
===
  Create a clock that is independent of date.

  + `Clock`s should should have behavior where minutes can be added or subtracted from its time.
  + ONLY use arithmetic operations -- do not use built-in date or time functionality  
  + do not mutate `Clock`s when adding or subtracting minutes.
  + (2) clocks that have same time are value 
  + custom methods?
    + #to_s
    + #+
    + #-
  + 24 hour format
  + minutes must be constrained to 60 units
    - float math or integer(hrs) && modulo(min.s) math
  

E
===
  Clock.at(8).to_s == "08:00"
  Clock.at(9).to_s == "09:00"

  Clock.at(10) - 90   => '08:30'
    Clock.at(10 )     => 1000
    1000 - 90         => 0830
    >> 90/60 == 1 hr. 
    >> 90%60 == 30 mins.
    (10 -1)(0 - 30)

DS
=====
  > Clock
    + Clock::at(hr, mnts = '00')
      - pass `hr` and `mins` new Clock instance
      - return instance
    + Clock::to_s
      - return a String
      - place ':' between String versions of `hr` and `mnts`
    + Clock#initialize(hrs, mins)
      - create `hrs` and `mins` attributes

NOTES
=====
  + `time`...
    - `hrs` && `mins` (2) digits
    - convert ints to Strings, combine, then convert int
  + conversion / constraint math
    - hrs   : num / 60 
    - mins  : num % 60
    + if `mins` < 0,
      - subtract `1` from `hrs`
    + if `hrs` == 24,
      - `hrs` reassigned to `00`
    + if `hrs` > 24
      - `hrs` reassigned to `num - 24`
  + make instances to deal with time arithmetic
    - class method, `::at`, returns time of a new instance
  > Formatting
    + Clock::at arguments : Integers
      - string format : `"nn:nn"`
      - int format    : 


ALGORITHM
=========
  + use instance of `Clock` to perform time arithmetic
  + pass `time` in String format between methods and instances

=end

class Clock
  attr_writer :mins
  def self.at(hrs, mins = 0)

    self.new(hrs, mins)
  end

  def initialize(hrs, mins)
    @hrs = hrs
    @mins = mins
  end

  def hrs
    if @hrs >= 24
      @hrs = @hrs - 24
    elsif @hrs <= 0
      @hrs = 24 - @hrs
    end

    @hrs
  end

  def mins
    if @mins <= 0
      @hrs = @hrs - @mins / 60
      @mins = 60 - (@mins.abs % 60)
    elsif @mins >= 60
      @hrs = @hrs + @mins / 60
      @mins = 0 + (@mins % 60)
    end
    
    @mins
  end

  def -(mins)
    # subtract `mins` from @mins
    # if new @mins < 0, hours need to be subtracted
    # (@mins - mins) / 60
    if self.mins - mins < 0
      self.hrs += (self.mins - mins) / 60
      self.mins -= mins % 60
    else
      self.mins -= mins
    end
    
    self
  end

  def +(mins)
    sub_hrs = mins / 60
    sub_mins = mins % 60

    self.hrs = (self.hrs + sub_hrs)
    self.mins = (self.mins + sub_mins)

    self
  end

  def to_s
    # if self.hrs < 10
    #   self.hrs = "0#{self.hrs}"
    # end
    
    # if self.mins < 10
    #   self.mins = "0#{self.mins}"
    # end
    
    # "#{self.hrs}:#{self.mins}"
    "#{sprintf('%.2d', self.hrs)}:#{sprintf('%.2d', self.mins)}"
  end
end

# p Clock.at(10)
# p Clock.at(00).to_s
# p Clock.at(25).to_s
# p Clock.at(10, 12).to_s
# binding.pry
# p (Clock.at(0) - 50)#.to_s         # => 23:10
# p (Clock.at(0) - 110)#.to_s        # => 22:10
# p (Clock.at(6, 15) - 10)#.to_s     # => 06:05
# p (Clock.at(6, 15) - 30)#.to_s    # => 05:45