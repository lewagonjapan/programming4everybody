### Looping with Ruby

# Instead of writing this 10 times...
# puts "My number is 1"
# puts "My number is 2"
# puts "My number is 3"
# ...
# puts "My number is 10"
# ...we use a loop!


# x.times => repeats a block x times
# The block variable starts at 0, so we add 1 to display 1..10
10.times do |int|
  # puts "My number is #{int + 1}!"
end


# New data type: Range  yaay
# (1..10).class # => Range
1..10    # => range from 1 to 10 (10 INCLUDED)
1...10   # => range from 1 to 9  (10 EXCLUDED — note the three dots)
'a'..'z' # => a, b, c, ... x, y, z
'A'..'Z' # => A, B, C, ... X, Y, Z
# A Range is NOT an array. If you need an array, call .to_a:
# (1..10).to_a # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


# for loop
for int in 1..10
  # puts "My number is #{int}!"
end
# Note: in Ruby, `for` is rarely used. `.each` and `.times` are more idiomatic.


# loop do => infinite loop, exits with `break`
my_number = 1
loop do
  puts "My number is #{my_number}"
  my_number += 1   # shorthand for: my_number = my_number + 1

  break if my_number > 10   # Ruby idiom: trailing `if` reads like English
end


# live code
# 1- Greet the user to our super awesome game
# 2- Decide on the price to guess and store it in a variable
# 3- Ask the user to guess the price (between 1 and 5)
# 4- Store the user's guess in a variable
# 5- Keep asking the user until they guess right
# 6- Print the congratulations message

puts "Welcome to the price guessing game!"
puts "=============================="

price_to_guess = rand(1..5)   # random integer between 1 and 5 (inclusive)

puts "Guess a price between 1 and 5"
print '> '

user_guess = gets.chomp.to_i

# while condition => keep looping AS LONG AS the condition is true
while user_guess != price_to_guess
  puts "Wrong! Guess again between 1 and 5"
  print '> '
  user_guess = gets.chomp.to_i
end

puts "Congratulations! You guessed the price right! #{price_to_guess} is the correct price!"


# .each loop => the most common way to iterate in Ruby
# Works on any collection (Range, Array, Hash...)


# Quick recap of loop choices:
# - x.times    => when you just need to repeat N times
# - .each      => when you have a collection to go through (most common!)
# - while      => when you don't know how many times you'll loop (e.g. user input)
# - loop do    => infinite loop, you control the exit with `break`
# - for ... in => exists, but Rubyists usually prefer .each