=begin

Identify the three major components of the code below. Be sure to show the actual code associated with each of the components.

=end

an_object = Proc.new { puts "Hi, I'm 67 years old" }

an_object.call # => Hi, I'm 67 years old


=begin

Local variable `an_object` is assigned on line 1 to reference a Proc Object which is instantiated with the block, `{ puts "Hi, I'm 67 years old" }.
On line 3, `Proc#call` is called on the Proc reference by `an_object`.
On line 1, the code within the curly brackets executes, outputting `"Hi, I'm 67 years old"` to the screen.

=end