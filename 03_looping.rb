### Looping with Ruby

# ==== LOOPING ====

# Looping is what makes computers powerful


# New Data Type: Range
1..10 # all the integers from 1 to 10
1...10 # all the integers from 1 to 9

(1..10).to_a
('a'..'z').to_a


### Three ways to loop that are almost never used in Ruby

# 1) for loop

for i in 1..10
    puts i
end

# 2) loop do

counter = 0
loop do
    puts 'I love Ruby 😍'
    counter += 1
    break if counter == 10
end

# 3) .times do

10.times do
    puts 'I love Ruby 😘'
end


# The 'Correct' way to loop:
# while / until


# ==== LIVECODE: PRICE IS RIGHT ====

# Our user can guess a price until they find the correct price

# Pseudo-Code
# 0 - Greet the user! OK
# 1 - Set a price to guess OK
# 2 - Ask the user for their guess
# 3 - Keep asking *until* the user guesses the correct price
# 4 - Final message when the user guesses correctly

puts 'Welcome the The Price is Right!! 🤑🤑🤑'
puts '========'
puts ''

# Setting the price to guess
price_to_guess = rand(1..10)

# Initialize user_guess
user_guess = 0

# loop starts
message = 'Guess a price between 1 and 10'
until user_guess == price_to_guess
    puts message
    message = 'Try again!'
    print '> '
    user_guess = gets.chomp.to_i # Casting user input as an Integer
end

puts ''
puts 'Congrats! You guessed the right price'


### Iterators

le_wagon_team = ['Sasha', 'Douglas', 'Yann', 'Sylvain']

# Iterating over an array with a for loop:

for member in le_wagon_team
    puts "#{member} works at Le Wagon"
end


# With an iterator: the most basic iterator is .each

le_wagon_team.each do |member|
    puts "#{member} works at Le Wagon"
end

