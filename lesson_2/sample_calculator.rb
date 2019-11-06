#ask for two numbers

def prompt(message)
	Kernel.puts ("=>#{message}")
end

Kernel.puts ("Good morning")

prompt ("what is the first number?")

number1 = Kernel.gets().chomp()

prompt ("what is the second number?")

number2 = Kernel.gets().chomp()

Kernel.puts ("your first number is #{number1} and your second number is #{number2}")

Kernel.puts("What is the operator: Choose 1 for addition, 2 for substraction, 3 for multiplication and 4 for division")

operator = Kernel.gets().chomp()

if operator == "1"
	answer = number1.to_i + number2.to_i
elsif operator == "2"
	answer = number1.to_i - number2.to_i
elsif operator == "3"
	answer = number1.to_i * number2.to_i
elsif operator == "4"
	answer = number1.to_i / number2.to_i
end

Kernel.puts("The first number is #{number1}, the second number is #{number2} and the result is #{answer}")


Kernel.puts ("Thank you!")
