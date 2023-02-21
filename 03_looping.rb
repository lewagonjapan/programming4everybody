### Looping with Ruby

## loopig is repeating a chunck of code a certain number of times

## New data type today
# Range
(1..10).class
(1..10).to_a # array from 1 to 10 inclusive
(1...10).to_a # array from 1 to 10 exclusive
('a'..'z').to_a

## Iterables are data types I can loop over on element at a time
# range is an iterable
# array is an iterable


## Three types of loops Not very used in Ruby
# For loop ##### (!) NEVER USER (!) #####
for number in 1..10 # this is a range
  # puts number
end

# .times
10.times do
  # puts "print me!"
end

# loop do

counter = 0
loop do
  puts "Print me!"
  counter += 1
  if counter == 10
    break # allows me to break out of a loop
  end
end

## Live code
# The Price is right
# Small app to introduce until loop in which I keep asking a user to guess the
# correct price of a product

# PSEUDO-CODE
# Greet the user
# Set a price of the product
# Ask the user to guess a price
# Keep asking him to guess price until he guesses correctly
# Congratulate the use

puts "Welcome to our game!"
puts "=============="
puts ' '

price_to_guess = rand(1..10)
user_guess = 0 # initialize a variable

until user_guess == price_to_guess
  puts "Guess a price between 1 and 10"
  user_guess = gets.chomp.to_i
end

puts "Congratulations you guessed it right"


## .each => For next session
## Iterators tools that ruby gives me to iterate over iterables (i.e. ranges
## and arrays)

names = ['sylvain', 'dougles', 'sasha']

# for name in names
#   puts name
# end

names.each do |name|
  puts "#{name} is an amazing teacher at le wagon"
end

## More on this in next session
