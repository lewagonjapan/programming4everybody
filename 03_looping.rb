### Looping with Ruby

# puts "print me!!!!"
# puts "print me!"
# puts "print me!"
# puts "print me!"
# puts "print me!"
# puts "print me!"
# puts "print me!"
# puts "print me!"
# puts "print me!"
# puts "print me!"
# puts "print me!"

# we take advantage of the power of computers
# DRY Do not Repeat Yourself

# new data type
# RANGE
(1..10).class
(1..10).to_a
# with two dots .. -> between 1 and 10 ( 10 inclusive)
(1...10).to_a
# with three dots ... -> between 1 and 10 ( 10 excluded)
('a' .. 'z').to_a
('A'..'C').to_a


# for loop
# x is just a variable
for x in (1..10).to_a
  # puts "My number is #{x}"
  # puts "print me!"
end


# loop do
counter = 1

loop do
  # puts "This is iteration number ##{counter}"
  counter += 1
  # counter = counter + 1
  if counter > 10
    break # break out of the loop
  end
end

# x.times

10.times do
  # puts "Print me!"
end

# Live code
# Guess the price / The price is right

# 1- Greet the user
# 2- Set the price of the product ( number to guess )
# 3- Ask the user to guess and store it in a variable
# 4- compare the users guess to the price to guess
# 5- keep asking the to guess until they guess right
# 6- Print final message when user guesses correctly

puts 'Welcome The Price is Right!! 🤑🤑🤑'
puts '========'
puts ''

price_to_guess = rand(1..5)

puts 'Guess a price between 1 and 5'
user_guess = gets.chomp.to_i

# while condition > while loop will keep iterating while the condition is true.
# while !(user_guess == price_to_gess)
# until user_guess == price_to_guess # opposite condition to while, until loop will keep iterating until the condition is true
while user_guess != price_to_guess # the user guessed wrong
  puts "Wrong guess, Try again!"
  print '> '
  user_guess = gets.chomp.to_i
end

puts "You guessed it right! The price to guess was #{price_to_guess}"

# iterators => built in looping methods / function provided by ruby
# to iterate over lists of element **and do something**

numbers = (1..10).to_a

for x in numbers
  # puts "My number is #{x}"
  # puts "print me!"
end

# .each
numbers.each do |x|
  puts "My number is #{x}"
end

# .each one liner
numbers.each { |x| puts "My number is #{x}" } # only possible if the code is made out of one line ( only )