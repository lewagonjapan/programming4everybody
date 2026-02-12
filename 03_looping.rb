
# ------------------------------------------------
# This file demonstrates common Ruby looping constructs:
# - Range
# - for loop
# - loop do (infinite loop with break)
# - Integer#times
# - while loop (with a small guessing game)
#
# Students: run examples and uncomment lines to experiment.

# --------------------
# Ranges
# --------------------
# A Range is an interval (inclusive .. or exclusive ...).
# Useful to iterate over sequences or convert to arrays.
(1..10).class            # => Range
# p (1..10).to_a          # => [1, 2, ..., 10]
# p (1...10).to_a         # => [1, 2, ..., 9]
# p ("a".."z").to_a       # => ["a", "b", ..., "z"]

# --------------------
# for loop
# --------------------
# Iterates over elements from a range or collection.
for number in (1..5)
  # puts "for loop: number = #{number}"
end

# --------------------
# loop do (infinite loop)
# --------------------
# loop do creates an infinite loop; use break to exit.
counter = 1
# loop do
#   puts "loop do: counter = #{counter}"
#   counter += 1
#   if counter > 10
#    break
#   end
# end

# --------------------
# Integer#times
# --------------------
# A concise way to repeat an action N times.
5.times do
  # puts "times loop: iteration"
end

# --------------------
# while loop — example: a simple guessing game
# --------------------
# Pseudocode:
# 1. Greet the user
# 2. Set a random price to guess (1..10)
# 3. Prompt the user until they guess correctly

puts 'Welcome to "The Price Is Right" demo!'
puts '====================================='
puts

price_to_guess = rand(1..10)

puts "Can you guess the price of the product? (It's between 1 and 10)"
print '> '
user_guess = gets.chomp.to_i

while price_to_guess != user_guess
  puts 'Sorry, wrong guess! Try again.'
  print '> '
  user_guess = gets.chomp.to_i
end

puts
puts 'Congrats! You guessed the right price.'
puts "The price was $#{price_to_guess}."
