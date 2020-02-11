#Ask a user for two numbers
#Ask the user for the operator to perform
#Perform the operation on the two numbers
#Output the result

#Answer = Kernel.gets()
#Kernel.puts()

def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Welcome to Calculator!")

prompt("What is the first number?")

number1 = Kernel.gets().chomp()

prompt("What is the second number?")
number2 = Kernel.gets().chomp()

prompt("What operator would you like to perform? 1) Add 2) Substract 3) Multiply 4) Divide")
operator = Kernel.gets().chomp

if operator == "1"
  result = number1.to_i() + number2.to_i()
elsif operator == "2"
  result = number1.to_i() - number2.to_i()
elsif operator == "3"
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f() / number2.to_f()
end

prompt("the result is #{result}")

# This is a simple calculator with the if conditional
