### Looping with Ruby
#
# DRY: Don't Repeat Yourself

# Range data type
# Represents an interval between two values, e.g. 1..100
(1..10).class # Range
(1..100).to_a
# .. (two dots): the end value is included
# ... (three dots): the end value is excluded
('a'..'z').to_a
('A'..'Z').to_a
# ('A'..'z').to_a

# For loop
for number in (1..10).to_a
  # puts "#{number} - print me!"
end


# loop do
# counter = 1
#
# loop do
#   puts "my number is #{counter}"
#   counter = counter + 1
#
#   if counter > 10
#     break
#   end
# end

# .times
10.times do
  # puts "Print me!"
end


# Live code
# The Price is Right game

# 1. Greet the user
# 2. Set the price of the product
# 3. Ask the user to guess the price (store it in a variable)
# 4. Keep asking until the user guesses correctly
# 5. Print a final message when the user guesses correctly

puts 'Welcome The Price is Right!! 🤑🤑🤑'
puts '========'
puts ''

price_to_guess = rand(1..5)

puts 'Guess a price between 1 and 5'
user_guess = gets.chomp.to_i

# while loop

# if price_to_guess == user_guess
#   puts "You guessed it right!"
# else
#   puts "you guessed it wrong"
# end

while user_guess != price_to_guess
  puts 'Wrong, try again!'
  print '> '
  user_guess = gets.chomp.to_i
end

puts "You guess right the price to guess was #{price_to_guess}!"


# Iterators in Ruby
students = ['Lance', 'Emily', 'Kim']
# for name in students
#   puts "Hello #{name}, welcome"
# end

# .each
# array.each do |name|

students.each do |name|
  puts "Hello #{name}, welcome"
  puts " something else "
end

# One-liner
students.each { |name| puts "Hello #{name}, welcome" }
