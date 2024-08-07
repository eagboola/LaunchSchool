=begin

  Given the starting code for the Listening Device,
    finish the program to operate as intended according
    to the provided specifications.

    Implement #listen and #play.

    `#listen`
    + if a block is provided,
      - push the block contents to list of recordings (`@recordings`) with `#record`
    
    `#play`
    + output contents from `@recordings`
=end

# provided code
class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end

  def listen
    record(yield) if block_given?
  end

  def play
    puts @recordings.last
  end
end

# provided specifications
listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play   # outputs "Hello World!"
