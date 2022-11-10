### Looping with Ruby


# ==== Looping =====

# Looping is what makes computers powerful

# Let's introduce a new data type!
(1..10).to_a
(1...10).to_a
('a'..'z').to_a

### THREE ways to loop that are not used so much in Ruby

### 1) for loop
# for loops are not used at all in Ruby, because there are more intuitive ways to do the same thing

for i in 1..10
    puts i
end

### 2) loop do
# 'Infinite' loop

counter = 1
loop do 
    puts 'I love Ruby ❤️'
    counter += 1
    break if counter == 10
end


# .times do

10.times do 
    puts 'I love Ruby 😍'
end


# ==== Livecode 2 =====

# Let's code the game 'The Price is Right!'

# Pseudo-code
# 1) Greet the user OK 
# 2) Set the price to guess OK
# 3) Ask the user to guess a price between 1 and 10 OK 
# 4) collect user input and store in a variable (as an INTEGER) OK
# 5) Loop *until* the user guesses the *right price*

# Greeting the user
puts 'Welcome to the price is right!! 💰💰💰'
puts ''

# Set a price to guess
price_to_guess = rand(1..10)

# Initialize user guess
user_guess = 0

# Loop until user guesses the right price
until user_guess == price_to_guess
    puts 'Guess a price between 1 and 10:'
    print '> '
    user_guess = gets.chomp.to_i
end

# Final message
puts 'Congrats! You guessed correctly...'


# You should keep your code DRY
# Don't Repeat Yourself


# On Tuesday, we will introduce another way to loop, iterating over arrays, using iterators

# ==== Homework =====

# Let's add some features to our Price is Right code:
# 1) Add a hint to the user (too high / too low)
# 2) Tell the user how many guesses it took them
# 3) Limit to 3 the number of guesses the user can take
# 4) Let the user choose an item between car, scooter, and ps5
# 5) As many features as you want!

# ==== Q&A ====

### Q1) what does .chomp do?

# Ruby Doc is your best friend!
# but otherwise, it removes special characters at the end of a String

puts 'what is your name?'
name = gets

puts name == 'sylvain'


### Q2) What is unless?
# unless is the exact opposite of if

puts 'waht time is it?'
time = gets.chomp.to_i

unless time >= 12
    puts 'the restaurant is open!'
else
    puts 'Sorry, the restaurant is closed...'
end


# when to use if? When to use unless?
# Readability


# Q3) Examples of clean code concepts?

# - explicit variable naming
# - DRY (don't repeat yourself)
# - SRP (Single Responsibility Principle): a method should do one thing, and ONLY one thing
# - Indentation
# - Commenting
