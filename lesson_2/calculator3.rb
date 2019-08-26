#Ask a user for two numbers
#Ask the user for the operator to perform
#Perform the operation on the two numbers
#Output the result

#Answer = Kernel.gets()
#Kernel.puts()

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() !=0
end

def operation_to_message(op)
 case op
 when "1"
   "Adding"
 when "2"
   "Substracting"
 when "3"
   "Multipying"
 when "4"
   "Dividing"
   end
 end


prompt("Welcome to Calculator!: Enter your name: ")

name = ""
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do #main loop
  number1 = ''
  loop do
  prompt("What is the first number?")
  number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt("Heck.....that doesnt look like a valid number")
    end
  end

  number2 = ''

  loop do
  prompt("What is the second number?")
  number2 = Kernel.gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt("Heck.....that doesnt look like a valid number")
    end
  end

  operator_prompt = <<-MSG
   What operation would you like to perform?
      1) Add
      2) Substract
      3) Multiply
      4) Divide
    MSG
    #delimiters

  prompt(operator_prompt)

  operator = ""
  loop do
  operator = Kernel.gets().chomp

  if %w( 1 2 3 4).include?(operator)
    break
  else
    prompt("Must choose 1, 2, 3 or 4")
  end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
  when "1"
    result = number1.to_i() + number2.to_i()
  when "2"
    result = number1.to_i() - number2.to_i()
  when "3"
    result = number1.to_i() * number2.to_i()
  when "4"
    result = number1.to_f() / number2.to_f()
  end

  prompt("the result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
end


prompt("Thank you for using the calculator. See you soon!")

#This is a simple calculator with loop condition
