### Looping with Ruby

# Range
(1..10).to_a
(1...10).to_a
('a'..'z').to_a

# for
for name in names
  # puts "My friend is #{name}!"
end

# loop do
counter = 0 # intialize a counter

loop do
  # puts "I love coding!"
  counter += 1
  # counter = counter + 10
  if counter == 10
    break # breaks out of the loop
  end
end

# .times
10.times do
  puts "I love coding"
end

10.times { puts "I love coding" }

# Livecode ( Pseudo )
# 1- Greet the user
# 2- set the price of the product to guess
# 3- ask the user for a price
# 4- store it in a variable
# 5- compare the user input the products price
# 6- Keep asking until the guess is correct
# 7- final message to thte user

puts 'Welcome The Price is Right!! 🤑🤑🤑'
puts '========'
puts ''

price_to_guess = rand(1..5)

puts "Guess  price between $1 and $5"
print '> '

user_guess = gets.chomp.to_i

# until price_to_guess == user_guess
while price_to_guess != user_guess
  puts "Try again!"
  print '> '
  user_guess = gets.chomp.to_i
end

puts "You guessed it the correct price was $#{price_to_guess}"
#
#
names = ["Soufiane", "Vrushali", "David"]

for name in names
  puts "My name is #{name}"
end

names.each do |name|
  puts "Hello there,"
  puts "My name is #{name}"
end

names.each { |name| puts "My name is #{name}" }