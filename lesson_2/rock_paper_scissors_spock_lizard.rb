VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'scissors' && second == 'paper') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'rock' && second == 'scissors')
end

player_score = 0
computer_score = 0

loop do

  def initialize
    score

  end

  def display_result(player, computer)
    if win?(player, computer)
      prompt('You won!')
    elsif win?(computer, player)
      prompt('computer won!')
    else
      prompt("it's a tie!")
    end
  end

  loop do
    choice = ' '
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = Kernel.gets().chomp()
      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("that's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice}; the computer chose: #{computer_choice}")

    display_result(choice, computer_choice)
    display_score(player_score, computer_score)
end
  prompt('Do you want to play again?')
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing!')
