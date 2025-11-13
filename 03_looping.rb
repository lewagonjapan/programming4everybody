### Looping with Ruby
# Range
# A range is a datatype that represents an interval - a set of values with a beginning and an end
p (1..10).class
# .. means the last/end value will be included
p (1..10).to_a
# ... means the last/end value will be excluded
p (1...10).to_a

p ('a'...'z').to_a
p ('A'...'Z').to_a
p ('A'..'z').to_a # ASCII table

# Each time the code repeats in a loop, we call that an iteration

# For loop
for x in (1..10)
  puts "My number is #{x}"
end

names = ["carl", "amitesh", "johanna"]
for name in names
  puts "My name is #{name.capitalize}"
end

# Loop do is an infinite loop
counter = 1

loop do
  puts "My number is #{counter}"
  counter = counter + 1

  if counter > 10
    break
  end
end

# .times
10.times do
  # puts "Print me"
end

# The while loop through live code
# Pseudo code:

# 1. Greet the user to our game
# 2. Set a price for a product
# 3. Ask the user to guess the price
# 4. Keep asking until the user guesses the correct price
# 5. Print a message when the user guesses correctly

puts 'Welcome to The Price is Right! 🤑🤑🤑'
puts '========'
puts ''

price_to_guess = rand(1..10)

puts "Guess a price between 1 and 10:"
print '> '
user_guess = gets.chomp.to_i

# until user_guess == price_to_guess
while user_guess != price_to_guess
  puts 'Try again:'
  print '> '
  user_guess = gets.chomp.to_i
end

puts "Correct! You guessed it right. The price was #{price_to_guess}."

# Iterators
names = ["carl", "amitesh", "johanna"]

for name in names
  puts "My name is #{name.capitalize}"
end

# .each method
names.each do |name|
  puts "My name is #{name.capitalize}"
end

# .each with one line
names.each { |name| puts "My name is #{name.capitalize}" }