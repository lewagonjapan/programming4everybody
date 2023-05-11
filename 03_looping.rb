### Looping with Ruby

## New Data type => Range
(1..10).class # => Range
p ('a'..'z').to_a


# for loop
# number is a parameter
# range is an iterable
for number in (1..10).to_a
  puts "print me! #{number}"
end


# loop do

counter = 0

loop do
  puts "I love Coding!!"
  counter = counter + 1
  if counter == 10
    break # break out of the loop/ exit the loop
  end
end

# .times loop

10.times do
  puts "I love Coding"
end


# livecode
# pseudo-code

# Greet the user
# set the price of a product
# ask the user for a guess
# keep asking the user to guess UNTIL they gess right
# print a final message when they guess correctly

puts 'Welcome The Price is Right!! 🤑🤑🤑'
puts '========'
puts ''

# setting the price to guess
price_to_guess = rand(1..5)

# initialize the user guess
user_guess = 0

message = 'Guess a price between 1 and 5'

# start my loop
until user_guess == price_to_guess
  puts message
  user_guess = gets.chomp.to_i
  message = "Try Again"
  if user_guess != price_to_guess
    puts "Loser"
  end
end

puts "You guessed it right, Congrats"

# .each

array = ["negai", "allan", 'khanh']

array.each { |name| puts name }

array.each do |name|
  puts name
end


# for name in array
#   puts name
# end

age = 18

# Case When statement is suitable to use when two main conditions are met:
# 1- all my comparisons depend on the same variable
# 2- I am only checking for equality

case age
when 10 then puts "its less than 18"
when 18 then puts "its 18"
when 20 then puts "its more than 18"
else
  puts "nothing"
end


if age == 10
  puts "its less than 18"
elsif age == 18
  puts "its 18"
elsif age == 20
  puts "its more than 18"
else
  puts "nothing"
end


# For quick commenting / uncommenting lines
# CMD + /
# CTRL + /
