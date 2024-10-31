### Looping with Ruby

# looping
# is a way to automatically repeat a chunk of code a set number of times

# New Data type (range)
# A range represents an interval set of values beginning and ending bet ween the ..
# puts (1..10).class
# p (1..10).to_a # creates an array from 1 to 10 ( range ) including the last element (..)
# p (1...10).to_a # array from 1 to 9 ( ... )
#
# p ('a'..'z').to_a
# p ('a'..'z').to_a
# p ('A'..'z').to_a

# Each time the loop repeats it self ( we call that an iteration )

# for loop
for number in 1..15
  puts "The number is %02d" % number
end

# loop do
counter = 1 # initialize with the value 0
loop do
  # puts "#{counter} Print me!"
  counter += 1 # counter = counter + 1
  if counter > 10
    break
  end
end

# x.times
10.times do
  # puts "Print me!"
end

# Livecode
# Pseudocode

# Greet the user the app
# Set the price of the product
# Ask the user to guess a price between 1 - 5$
# Keep asking until the user guesses right
# Final message when the user wins

puts 'Welcome The Price is Right!! 🤑🤑🤑'
puts '========'
puts ''

price_to_guess = rand(1..5)

puts "Guess a price between 1 and 5!"
print "> "
user_guess = gets.chomp.to_i

# until price_to_guess == user_guess # until the condition is met
while price_to_guess != user_guess # while the condition is not met
  #   keep asking the user whill the price to guess is not the users guess
  puts "try again!"
  print "> "
  user_guess = gets.chomp.to_i
end

puts "Congratulations you guessed it right"
puts "The price to guess was #{price_to_guess}!"

# while loop
# like an if statement take a condition
# the loop will keep iterating / running until the condition is false

# until loop
# loop will keep iterating / runnin until the condition is true

# Iterators / iterables
# iterator is a tool we use to loop over list of data
# iterable is a list of data ( array , range , hash )


# for student in students
#   # puts "#{student} is a student at le WAGON!"
# end

# .each do end
# iterable.each do
# code that is going to be repeated
# end

students = ['Amanda', 'Sandrine', 'Patrick']
students.each do |student|
  # puts "Hello #{student}!"
  # puts "#{student} is a student at le wagon"
end

# one line version of the for each
# students.each { |student|  puts "#{student} is a student at le wagon" }