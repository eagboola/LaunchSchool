require 'yaml'
require 'pry'
require_relative 'my_methods.rb'

# mortgage equation
# M = P( J / (1 - ((1 + J) ** (-N))))

# M : monthly payment
# P : principal / loan amount
# J : monthly interest rate
# N : loan duration in months

# method definitions here

# initialize variables here
loan_amount = 0  # 
apr = 0.0       # 
duration = 0    # in years

# loop until exit is specified
loop do
  
  # get loan total
  prompt("Please enter the total amount of the loan.")

  # validate loan total
  loop do
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      break
    else
      prompt("Please enter a valid number for the loan amount.")
    end
  end

  # get apr
  prompt("Alright. Now enter the interest rate.")
  
  # validate apr
  loop do
    apr = gets.chomp

    if valid_number?(apr)
      break
    else
      prompt("Please enter a valid number for the interest rate.")
    end
  end

  # get loan duration
  prompt("Great. Now for the duration of the loan. Please enter that in years.")

  # validate loan duration
  loop do
    duration = gets.chomp

    if valid_number?(duration)
      break
    else
      prompt("Please enter a valid number for the loan duration.")
    end
  end

  monthly_payment = loan_amount.to_f * ( (apr.to_f / 100) / ( 1 - ((1 + (apr.to_f / 100))**(-(duration.to_i * 12)))) )

  prompt("Alright. Let's calculate that...")
  sleep(1)
  prompt("loan amount   : #{loan_amount}")
  prompt("interest rate : #{apr}")
  prompt("duration      : #{duration}")
  sleep(2)
  prompt("The monthly payment will be #{monthly_payment}")
  sleep(1)

  prompt("Would you like to perform another calculation? ('y' to continue)")
  answer = gets.chomp
  
  # stop program if 'y' or 'Y' is entered
  break unless answer.downcase == 'y'

end
