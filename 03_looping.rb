### Looping with Ruby



# ==== LOOPS ====

# Loops are what makes computer powerful


# Three not very useful loops (not really used)

# 1) 'for' loop

# new data type: range
puts (1..10).class # => Range

for i in 1..10
  puts i
end


# 2) 'loop do'

counter = 0
loop do
  puts 'I love Ruby'
  counter += 1
  break if counter == 10
end


# 3) 'times' loop

10.times do
  puts 'I ❤️  Ruby'
end


# 'Actual' ways to loop

# ==== LIVECODE ====

# Code a mini-game: the price is right

# pseudo-code

# Simple game
# 0 - Greet the user - OK
# 1 - set the price to guess
# 2 - Ask user for their guess and store the answer AS AN INTEGER
# 3 - **if** user guess and price to guess are the same, user wins, **otherwise**, user loses

# Advanced game
# 4 - asking the user **until** they get the right answer


puts 'Welcome to the Price is Righty!'
puts '===='

price_to_guess = rand(1..10)

# Initializing user_guess
user_guess = 0
# loop start
until price_to_guess == user_guess # keep looping until the condition is true
  puts 'Guess a price! (from 1 to 10)'
  user_guess = gets.chomp.to_i

  if price_to_guess == user_guess
    puts 'You win! congrats 😎'
  else
    puts 'Sorry, try again...'
  end
end
# loop end


# iterators

le_wagon_staff = ['sasha', 'douglas', 'yann', 'sylvain']

# The not Ruby way of looping over Arrays, using for loops

for member in le_wagon_staff
  puts "#{member.capitalize} works for Le Wagon Tokyo"
end

# The ruby way of looping over arrays

le_wagon_staff.each do |member|
  puts "#{member} works for Le Wagon"
end


# .each is called an iterator
# it's the most basic one
# We will meet many more of those on Tuesday


# Homework (about the price is right)
# 1) give a hint to the user to tell them if their guess is too high or too low
# 2) Count how many tries it took our user to guess the final answer, and display it in a final message



# Q&A

# 1) What the h... is this syntax

le_wagon_staff = ['sasha', 'douglas', 'yann', 'sylvain']

le_wagon_staff.each do |member|
  puts "#{member} works for Le Wagon"
end

# This is called the block syntax, we will see more of this on Tuesday


# 2) How to add a maximum number of tries
# HOMEWORK
# Feature number 3: add a maximum number of tries!


# 3) how about the previous homework?

# reproduce .capitalize without using it
first_name = 'sylvain'
first_name[0].upcase + first_name[1...first_name.length].downcase


# capitalizing first and last name
full_name = 'sylvain pierre'

splitted_name = full_name.split # Array of 2 elements
splitted_name[0].capitalize + ' ' + splitted_name[1].capitalize


# 4) Why doesn't gets.chomp work on Codecademy?

# Clear your browser cache and cookies
# Use Chrome


# 5) What is the difference between .capitalize and .capitalize!

# Theory:
# ! is part of the method name
# ! methods are called dangerous or destructive
# ! methods update the value stored in the variable

# ⚠️ Don't use ! methods (unless you know what you're doing)

puts 'Hey, what is your name?'
first_name = gets.chomp

first_name.capitalize!

puts "Hello #{first_name}"

# .capitalize! changed the value stored in first_name 😱



