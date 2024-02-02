### Looping with Ruby

## datatype: RANGE
# p (1..10).to_a
# p (1...10).to_a
# p ('a'..'z').to_a

## block
# things between 'do' and 'end'

### Theory

## for loop

# for number in (1..10)
#   # do something
#   puts number
# end

# names = [ "Ed", "Edd", "Eddy" ]
# for name in names
#   puts name
# end

# Ruby way for writing a for statement
# names.each do |name|
#   puts name
# end

## loop do
# counter = 0 # initialize a counter
# loop do
#   # do this block
#   puts "I love coding!"
#   counter += 1
#   break if counter == 10
# end

# ruby way of writing x amount times
# 10.times do
#   puts 'I love Ruby'
# end

## while loop

# while condition
#   # do this code if the condition is true
#   # stop when the condition is false
# end

# counter = 0 # initialize a counter
# while counter == 10
#   puts "Coding is fun"
#   counter += 1
# end

# until check if the condition is false

## exercise

# 1. Welcome the user ✔
# 2. set the target (the answer) ✔
# 3. ask for a number (turn it into an integer)✔
# 4. store the number in a variable✔
# 5. check if user got it right✔
# 6. if the user got it wrong, ask him for another number✔
# 7. if the user got it right. congrat the user✔

puts 'Welcome to The Price is right! 💵'
puts '==========='
puts ''

target = rand(1..10)
user_guess = 0

until user_guess == target
  puts 'Guess a number'
  print '> '
  user_guess = gets.chomp.to_i
end

puts "You got it! The correct price is #{target}"
