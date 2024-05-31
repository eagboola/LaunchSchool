def prompt(message)
  Kernel.puts("=> #{message}")
end

# create `valid_number?` method
def valid_number?(input)
  valid_integer?(input) || valid_float?(input)
end

# verify integer
def valid_integer?(num)
  Integer(num) rescue false
end

# verify float
def valid_float?(num)
  Float(num) rescue false
end

# verify proper operation input
def valid_operation?(str)
  str.length == 1 && str.match?(/[asmd]/)
end

# convert operation code to message
def operation_to_message(op)
  case op
  when 'a' then 'adding'
  when 's' then 'subtracting'
  when 'm' then 'multiplying'
  when 'd' then 'dividing'
  end
end