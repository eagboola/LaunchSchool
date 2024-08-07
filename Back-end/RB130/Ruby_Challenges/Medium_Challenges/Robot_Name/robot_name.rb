=begin

P
===
  Write a program that ~~manages robot factory settings~~ generates a random sequence of characters to produce a name.

  `"BC811"`
  `"RX837"`
  
  When robots come off the factory floor, they have no name. A random name is generated when a robot is booted up for first time. Sometimes, a robot needs to be reset to factory settings, meaning data is wiped to scratch, and built up again. After reset, a robot will have a new randomly-generated name.
  
  + names must be randomly generated : they should not follow a predictable sequence
  + only (1) instance of each unique name can exist at any given moment

E
===
  `"BC811"`
  `"RX837"`

DS
====
  + name format : [letter][letter][integer][integer][integer]

  > Class : Robot
    + instantiation
      - no arguments passed
      - name attribute generated
      - cannot produce second instance of same name -- class-level means of recording names that have been generated
    + Robot#name
      - getter for `name` attribute
      - if `name` attribute falsy, 
        - generate name
    + Robot#reset
      - create and set new value for `name` attribute
      - new value must differ from previous value
    + #generate_name -- helper?
      - private
      - checks against existing names
    + #name_exists? -- helper?

ALGORITHM
=========
  + class variable for generated/existing names

  > Robot#initialize
    + 
  > Robot#generate_name
    + iterate until valid name has been generated
      - generate (2) random capital letters
      - generate (3) random numbers
      - combine letters and numbers to generate `name`
      - return `name` unless matching value exists in `@@existing_names`


=end

class Robot
  ALPHABET = ('A'..'Z').to_a
  DIGITS = ('0'..'9').to_a

  @@existing_names = []

  def initialize
    @name = self.generate_name
  end
  
  def name
    @name = @name ? @name : self.generate_name
  end

  def reset
    @@existing_names.delete(@name)
    @name = self.generate_name
  end

  private
  def generate_name
    name = ''

    loop do 

      2.times { name << self.class::ALPHABET[rand(0..25)] }
      3.times { name << self.class::DIGITS[rand(0..9)]}
      
      break unless @@existing_names.any?(name)
    end
    
    @@existing_names << name
    name
  end

end

# p Robot.new.name
# p rob1 = Robot.new
# name1 =  rob1.name
# p name1
# name2 = rob1.reset
# p name2
