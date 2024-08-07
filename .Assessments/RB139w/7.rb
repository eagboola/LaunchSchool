=begin

"Bindings and closures are at the core of variable scoping rules in Ruby."

Explain what is meant by the quote above, specifically in relation to the code snipppet below.

=end

# original
def output_statement(preference)
  preference.call
end

color = "red"
preference = Proc.new {puts "My favorite color is #{color}"}
color = "blue"

output_statement(preference)

=begin

Variable scoping rules are predicated on the behavior of closures and their relationship with their bindings. When a closure is created, its binding is created. If the closure requires any previously defined artifacts (local variables, methods, etc.) to complete its execution, those artifacts are included in the closure's binding. A closure's bindings are resolved at execution - if any changes are made to anything in the closure's binding, they are reflected on execution. In the snippet above, local variable color is initialized on line 5. A Proc is defined on line 6, and is referenced by local variable preference. The Proc's code references color, which was defined before the Proc was, so it becomes part of the Proc's binding. A closure's binding is not "fixed" when the closure is created, but resolved when the closure is executed, which occurs in this snippet on line 9. On line 7, after the closure's creation and before its execution, local variable color is reassigned to reference "blue". When #output_statement is invoked on line 9, it is passed the Proc as an argument, and calls the Proc (line 2). On execution, the Proc's bindings resolve, at which point color references "blue". "My favorite color is blue" is therefore output to the screen.

=end