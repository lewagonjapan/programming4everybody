### Looping with Ruby

## Loops you should know, but not often used:

# for
for i in 1..10
  puts i
end

# loop do
i = 0
loop do
  puts "I love Ruby!"
  break if i == 10
  i += 1
end

# .times
10.times do
  puts "I love Ruby!"
end

#=========

## Much more Ruby style: Interators
# The most basic iterator is .each

band = ['Thom', 'Ed', 'Jonny', 'Phil', 'Colin']

band.each do |member|
  puts "#{member} plays in Radiohead"
end

#=========

## Looping with While / Until

# Mini-program: The Price is Right!
# 0 - set a price to guess
# 1 - Ask our user for their guess
# 2 - Keep asking *until* our user finds the right price

price_to_guess = rand(1..10)

# puts "What is your guess?"
# user_guess = gets.chomp.to_i
user_guess = 0

until price_to_guess == user_guess
  puts "What is your guess"
  user_guess = gets.chomp.to_i # Re-assigning user_guess
  if user_guess > price_to_guess
    puts "Too high!"
  elsif user_guess < price_to_guess
    puts "Too low..."
  end
end

puts "You guessed correctly! price was #{price_to_guess}"

## Code refactoring with *while*
# While is the *opposite* of until

price_to_guess = rand(1..10)

# puts "What is your guess?"
# user_guess = gets.chomp.to_i
user_guess = 0

while price_to_guess != user_guess
  puts "What is your guess"
  user_guess = gets.chomp.to_i # Re-assigning user_guess
  if user_guess > price_to_guess
    puts "Too high!"
  elsif user_guess < price_to_guess
    puts "Too low..."
  end
end

#=========

### Q & A
## *for* versus *.each*

band = ['Thom', 'Ed', 'Jonny', 'Phil', 'Colin']

# Works, but not really "Ruby"
for member in band
  puts member
end
# *member* is a parameter of my for loop

# Ruby way to iterate over lists:
band.each do |member|
  puts member
end
# *member* is a block parameter
