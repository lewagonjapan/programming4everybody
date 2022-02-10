### Looping with Ruby



# ===== LOOPING =====

# Looping is really what makes computers powerful
# It allows them to make millions of operations in seconds

### Not so used loops in Ruby

# 1) for loop

for i in 1..10
    puts i
end

# New data type!
1..10 is called a range
p (1..10).to_a # Array from 1 to 10
p ('a'..'z').to_a # The alphabet array


# 2) loop...do

counter = 0
loop do 
    puts 'I love Ruby!'
    counter += 1
    break if counter == 10
end


# 3) .times

10.times do
    puts 'I 😍 Ruby!'
end


### Loops that we actually use ###

# ==== LIVECODE =====
# Code the game the price is right

# 0 - Greet the user! OK
# 1 - Set a price to guess - OK
# 2 - Ask user to guess a price - OK
# 3 - Store the user answer (as an Integer) - OK
# 4 - Keep asking the user *until* they guess the right price

puts 'Welcome to the price is right! 🤑'
puts '-------'
puts ''

price_to_guess = rand(1..10)

# Initializing user_guess
# Giving it a 'default' value so that I can get into the until loop
user_guess = 0

# loop starts
until user_guess == price_to_guess
    puts 'Guess a price? (from 1 to 10)'
    print '> '
    user_guess = gets.chomp.to_i
end
# loop ends
puts 'You guessed the right price!'
puts "It was #{price_to_guess}"

# While and until are exact 'opposites'


#### Iterators

# Recap about arrays

[].class # empty array
[1, 2, 3] # array of 3 integers
['sylvain', 'sasha', 'douglas', 'yann'] # array of 4 strings
[1, 'sasha', true, 4.1] # also an array

# In arrays, we start counting from ZERO
['sylvain', 'sasha', 'douglas', 'yann']
##   0         1         2         3


# For loop with arrays
le_wagon_team = ['sylvain', 'sasha', 'douglas', 'yann']

for member in le_wagon_team
    puts "#{member.capitalize} works at Le Wagon!"
end

# member is called a parameter
# I can decide what name to give it


# In Ruby, we don't use for loops to iterate over arrays
# We use the iterator .each

le_wagon_team.each do |member|
    puts "#{member.capitalize} works at Le Wagon!"
end


# we can iterate over arrays with a for loop
# But please, never do that
# use .each instead, it is the RUBY WAY



# ==== Q&A ====

# Q1 - What the h**k is unless?

# unless is the exact opposite of if

puts 'how old are you?'
age = gets.chomp.to_i

unless age < 20
    puts 'you can drink 🍺'
end


# Q2 - Difference between end and break

# end is pretty much like closing a parenthesis.

# break exits a loop
# I don't like break 😤

counter = 0

loop do 
    puts 'I love ruby'
    counter += 1
    break if counter == 5
end

# We can refactor it with while or until

until counter == 5
    puts 'I love Ruby'
    counter += 1
end


# Q3 - How to stop the program from running for for a few seconds

sleep(10)

