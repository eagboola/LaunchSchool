require 'date'

=begin

P
===
  Write a program that constructs Objects representing a meetup date.
  Each Object takes an Integer for the month and year, and a case-insensitive "Descriptor", and determines the exact date of the meetup.

  > "Descriptors"
    + 'first'
    + 'second'
    + 'third'
    + 'fourth'
    + 'fifth'
    + 'last'
    + 'teenth' : each day of the week has exactly (1) '-teenth' day every month

E
===


DS
====
  > Meet#initialize(year, month)
    + generate new Date Object with year and month
  > Meetup#day(weekday, descriptor)


NOTES
======
  + determine how many of each weekday and their dates
  + generate collection of weekdays
    mondays : [date, date, date, date]
    tuesdays : [date, date, date, date]
      ...
  + "Descriptors" need to correspond to some behavior 
    - first --> i : 0
    - second --> i : 1
    - third --> i : 2
    - fourth --> i : 3
    - fifth --> i : 4
    - last --> i : -1
  + String matching with Regex
  + teenth?
    - whatever given day ends with the substring `'teenth'`

ALGORITHM
=========
  + generate collection of dates keyed by weekday (see above)
    - iterate from 1 to 31 (end?)
      - allocate based on day predicate method
  + correlate descriptor to a position


=end

class Meetup
  attr_reader :month, :year, :date_obj, :weekdays
  WEEKDAYS = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']

  def initialize(year, month)
    @month = month
    @year = year
    @date_obj = Date.new(year, month)
    @weekdays = WEEKDAYS.map do |day|
      [day, []]
    end.to_h
    self.days
  end

  def days
    last_day = Date.new(@year, @month, -1)

    (1..last_day.day).each do |n|
      day = Date.new(@year, @month, n)
      # p day
      if day.monday?
        weekdays['Monday'] << day
      elsif day.tuesday?
        weekdays['Tuesday'] << day
      elsif day.wednesday?
        weekdays['Wednesday'] << day
      elsif day.thursday?
        weekdays['Thursday'] << day
      elsif day.friday?
        weekdays['Friday'] << day
      elsif day.saturday?
        weekdays['Saturday'] << day
      elsif day.sunday?
        weekdays['Sunday'] << day
      end
    end
  end

  def day(wday, desc)

    case desc.downcase
      when 'last'
        weekdays[wday.downcase.capitalize].last
      when 'first'
        weekdays[wday.downcase.capitalize].first
      when 'second'
        weekdays[wday.downcase.capitalize][1]
      when 'third'
        weekdays[wday.downcase.capitalize][2]
      when 'fourth'
        weekdays[wday.downcase.capitalize][3]
      when 'fifth'
        weekdays[wday.downcase.capitalize][4]
      when 'teenth'
        weekdays[wday.downcase.capitalize].select {|d| d.day > 12 }.first
      else
        nil
      end

  end


end

# p Meetup.new(2013, 3)
test = Meetup.new(2013, 3)
test.days
# p test.weekdays['Monday'].length
# p test.weekdays['Monday'][0].day
p test.day('MOnDay', 'first')#.day
# p test.day('MOnDay', 'first') == Date.new(2013, 3, 4)
# p Date.new(2013, 3) == test.date_obj