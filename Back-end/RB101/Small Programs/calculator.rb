=begin
calculator program...

+ asks for (2) numbers
+ asks for type of operation to perform :
  + add
  + subtract
  + multiply
  + divide
+ displays result

- use explicit calls
  `Kernel.gets()`
  `Kernel.puts()`
  `.chomp()`


=end

# create `prompt` method
def prompt(message)
  Kernel.puts("=> #{message}")
end

# create `valid_number?` method
def valid_number?(num)
  Integer(num) rescue false
end


# create `valid_operation?` method
def valid_operation?(str)
  str.length == 1 && str.match?(/[asmd]/)
end

# create `operation_to_message` method
def operation_to_message(op)
  case op
  when 'a' then 'adding'
  when 's' then 'subtracting'
  when 'm' then 'multiplying'
  when 'd' then 'dividing'
  end
end


# display description
prompt("Welcome to the simple calculator! Please enter your name.")

# loop to validate to make sure 'enter' isn't proceeding
name = Kernel.gets().chomp()
loop do
  if name.empty?()
    prompt("Please make sure to enter a valid name.")
    name = Kernel.gets().chomp()
  else
    break
  end
end

# greeting
prompt("Hey, #{name}! Nice to meet! Have fun!")

Kernel.sleep(1)
prompt("This program will take (2) integers you enter and an operation, and display the result.")
# Kernel.sleep(2)
prompt("Let's get started!")


# main loop
loop do
    
  # initialize variables
  first_num = ''
  second_num = ''
  operation = ''

  # get first number
  loop do
    prompt("Please enter the first number.")
    first_num = Kernel.gets().chomp()
    #check
    if valid_number?(first_num)
      break
    else
      prompt("Looks like that isn't a number.. Let's try again.")
    end

  end

  # pause for effect...
  Kernel.sleep(1)

  # get second number
  loop do
    prompt("Great!")
    prompt("Please enter the second number.")
    second_num = Kernel.gets().chomp()

    # check
    if valid_number?(second_num)
      break
    else
      prompt("Looks like that isn't a number... Let's try again.")
    end
  end


  # display input
  # Kernel.sleep(1)
  prompt("Awesome. The numbers are #{first_num} and #{second_num}.")

  # get operation (show input options)
  prompt("Now enter the operation to be performed. See input instructions below.")

  prompt("
  'a' --  Addition
  's' --  Subtraction
  'm' --  Multiplication
  'd' --  Division")
  
  loop do
    operation = Kernel.gets().chomp()

    # check
    if valid_operation?(operation)
      break
    else
      prompt("Looks like that's not a valid operation. Let's try again.")
    end
  end

  prompt("#{operation_to_message(operation)} the two numbers...")

  # perform operation, save to variable
  result = case operation
          when 'a' then first_num.to_i() * second_num.to_i()
          when 's' then first_num.to_i() - second_num.to_i()
          when 'm' then first_num.to_i() * second_num.to_i()
          when 'd' then first_num.to_i() / second_num.to_f()
          else  "Hmmm... Something went wrong..."
  end

  # display results
  Kernel.sleep(2)
  prompt("Alright! The numbers entered were #{first_num} and #{second_num}, and the operation was #{operation}.
  The result is #{result}.")

  # prompt for new operation
  prompt("Would you like to perform another calculation? ('y' to calculate again)")
  answer = Kernel.gets().chomp()
  
  break unless answer.downcase().start_with?('y')

end

Kernel.sleep(2)
prompt("That's all for now. Toodles!")