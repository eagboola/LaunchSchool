=begin

Create two code snippets that demonstrate the two types of arity. Be sure to include code that demonstrates the effects of the types of arity in each case.

=end

def strict(phrase)
  yield(phrase)
end

strict("This will work.") {|p1| puts p1}
strict("This still works.") {|p1, p2| puts "#{p1} #{p2}"}
strict("This", "does", "not") {|p1, p2| puts "#{p1} #{p2}"}

=begin
Methods have strict arity, meaning the invocation of #strict on line 7 will raise an error because too many arguments are provided. Blocks have lenient arity, meaning the block provided to #strict on invocation on line 6 will execute without issue. The extra block parameter will reference nil and no error will be raised. On line 5, `#strict` is invoked with the expected number of method and block arguments.
=end