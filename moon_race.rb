# Pseudocode

# puts a welcome to the user
# ask user for their name
# name = get user input
# computer = random computer name

# user_position = 0
# computer_position = 0

# tell who is up first
# tell user to press enter to roll the dice
# number = get a random number from 1..6

# increment the position by the number
# tell user their new position

# tell the user it's the computer's turn
# number = get a random number from 1..6
# increment the comp's position by the number
# tell user the comp's new position

print `clear`
puts ''
puts '           Le Wagon Moon Race       '
puts '      First Rocket to the Moon wins   '
puts "          10 spaces to victory        "
puts ''

puts "What's your name?"
name = gets.chomp
computer = 'Bot'

user_position = 0
computer_position = 0

# loop here
until user_position >= 10 || computer_position >= 10
  # User's turn
  puts "#{name} your turn..."
  puts 'press anything to roll the dice'
  gets.chomp

  number = rand(1..6)
  user_position += number
  puts "#{name} rolled a #{number}... 🎲"
  puts "#{name}'s new position is #{user_position}"

  # Computer's turn
  puts "#{computer} your turn..."
  puts 'press anything to roll the dice'
  gets.chomp

  number = rand(1..6)
  computer_position += number
  puts "#{computer} rolled a #{number}... 🎲"
  puts "#{computer}'s new position is #{computer_position}"
end

# display the result
# check if it's a tie?
if user_position > computer_position
  puts "You won! 👩‍🚀"
else
  puts "You lost! 🤖"
end

# Homework
# Upgrade the game
# Upgrade the user experience




#
