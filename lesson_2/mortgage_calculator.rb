# This is to build a mortgage/car loan Calculator
# As part of 101 lesson requirements.
# I will need three pieces of information:
# -the loan amount
# - the Annual Percentage Rate (APR)
# - the loan duration
# from the above, I will calculate the following two things:
# 1) monthly interest Rate
# 2) loan duration in months
# This is the formula: m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly payment,
# p = loan amount,
# j = monthly interest rate,
# n = loan duration in months
# the code should be run through Rubocop

def prompt(message)
  puts("=>#{message}")
end

def valid_number?(num)
  num.to_i != 0
end

prompt('Hello here, I would like to know this: ') # Greetings

# asking for the information

prompt('what is the loan amount?')
loan_amount = ' '

loop do
  loan_amount = gets.chomp.to_f
    if valid_number?(loan_amount)
      break
    else
      prompt('Plz give us a valid number')
    end
end

########################################################

prompt('what is the Annual Percentage Rate %?')
apr = ' '

loop do
  apr = gets.chomp.to_f
    if valid_number?(apr)
      break
    else
      prompt('Plz give us a valid number')
    end
end

#######################################
prompt('what is the loan duration? In years terms')
loan_duration = ' '

loop do
  loan_duration = gets.chomp.to_f
    if valid_number?(loan_duration)
      break
    else
      prompt('Plz give us a valid number')
    end
end

prompt('the loan amount is #{loan_amount}, apr is #{apr} and the loan duration is #{loan_duration}')

prompt('calculating the mortgage rate.....')
monthly_interest_rate = apr / 12 / 100
loan_duration_in_months = loan_duration * 12
monthly_payment = loan_amount *
                  (monthly_interest_rate /
                  (1 - (1 + monthly_interest_rate) * * ( - loan_duration_in_months)))

prompt("the monthly_interest_rate is #{monthly_interest_rate} and the loan_duration_in_months is #{loan_duration_in_months}")

prompt("the monthly_payment is #{monthly_payment}")
