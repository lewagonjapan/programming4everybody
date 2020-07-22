### Looping with Ruby

# Fourth programming concept: loops

## Loops that you should know BUT that we almost never use in Ruby ☹️

# for loop
for i in 1..10
  puts i
end

# loop do
counter = 1
loop do
  puts 'I love Ruby!'
  break if counter == 10
  counter += 1 # *Incrementing* our counter
end

# .times
10.times do
  puts 'I love Ruby!'
end

# ===================
## While / Until

# livecode: the Price is Right!!
# User guesses a price, we continue playing *until* user guesses the right price

# 0 - Generate a random price
# 1 - Ask user for a price
# 2 - Store that answer in a variable (Integer)
# 3 - Continue asking *until* user guesses the right price


# Generating a random number between 1 and 10
price_to_guess = rand(1..10) # Should not be in the loop

user_guess = nil

until user_guess == price_to_guess
  puts 'What is your guess?'
  print '> '
  user_guess = gets.chomp.to_i
  if user_guess > price_to_guess
    puts 'Too high!'
  elsif user_guess < price_to_guess
    puts 'Too low!'
  end
end

puts "You guessed right!"
puts "The correct price was: #{price_to_guess}"

# Ruby is truthy
# Everything is true, except for: nil and false

# ===================
## The Ruby way: Iterators (more on this in the coming days!)

radiohead = ['Thom', 'Ed', 'Jonny', 'Colin', 'Phil']

# Iterating over an array with a for loop

for musician in radiohead # musician is the parameter for my *for* loop
  puts "#{musician} plays in Radiohead"
end

# Much more powerful, much more Ruby way:

radiohead.each do |band_member| # band_member is called a block parameter
  puts "#{band_member} plays in Radiohead"
end

# ===================
# Q&A
# Q1 - Can we call .each on a String?

"Rossella".chars.each do |letter|
  puts letter
end

# Q2 - Why do we say "Iterate over an Array"?
# .each is called an *Iterator*
# It is the simplest iterator
# We will discover many more iterators in the coming days.


# Q3 - Is there a limit to the number of methods we can chain?
# There is no limit, besides code readability

# About chaining methods
# When you chain methods, make sure that the method you're calling can be called on that object. For example:
'Rossella'.chars.each
# 'Rossella' is a String, we can call .chars on it
# .chars returns an array, so we can call .each on it



















