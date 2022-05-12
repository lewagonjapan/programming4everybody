### Looping with Ruby


# ===== LOOPING =====

# Looping is THE reason why computers are powerful

# Let's introduce a new Data Type: Ranges
1..10 # is a range from 1 to 10
1...10 # is a range from 1 to 9
puts (1..10).class # => Range
p ('a'..'z').to_a # => will return the 'Alphabet Array'


### Three not very used ways to loop in Ruby

### for loop

# for loops are not the way we do things in Ruby

for i in 1..10
    puts i
end


### loop do

counter = 0
loop do
    puts 'I love Ruby!'
    counter += 1
    break if counter == 10
end


### .times 

10.times do 
    # puts 'I love Ruby 😘'
end


# ===== LIVECODE 2 =====

# Let's code the Price is Right
# A participant can guess a price in as many tries as they want

# Pseudo-Code:
# 0) Welcome the user to our game! OK
# 1) Ask user to guess a price OK
# 2) Set a price to guess OK
# 3) gets user input and store it in a variable (cast the user input as an Integer!) OK
# 4) Loop *until* user guesses the correct answer

puts 'Welcome to the price is right! 🤑'

# Set a price to guess
price_to_guess = rand(1..10)

# Initializing user_guess
user_guess = 0

until user_guess == price_to_guess # loop until condition is met, i.e. user guesses the correct price
    puts 'Guess a price from 1 to 10'
    print '> '
    user_guess = gets.chomp.to_i 
end

# End of game message
puts 'Congratulations, you guessed correctly!'

# Homework
# 1) Give a hint to the user whether their guess is high or low
# 2) Count the number of tries it took to guess
# 3) Bonus: Set a maximum number of tries



### Another way to loop: Iterators

# Iterators are a way to go over a collection of elements

team_members = ['Sasha', 'Douglas', 'Yann', 'Sylvain']

# Iterate over an array with a for loop:

for member in team_members
    puts "#{member} works for Le Wagon Tokyo"
end


# The Ruby way to iterate over an array, using an iterator, .each :

team_members.each do |member|
    puts "#{member} works for Le Wagon Tokyo"
end

