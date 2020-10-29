### Looping with Ruby


### Looping
# the most powerful part of programming

# First of all, new Data Type: Range

(1..10) # 1 to 10
(1...10) # 1 to 9

# Turning a range into an array with .to_a
(1..10).to_a # array of integers from 1 to 10
('a'..'z').to_a # array of letters from a to z


# 3 ways to loop, not much used in Ruby


## 1) for loops
for i in 1..10
  puts i
end

# Iterating over an array with for loop

names = ['sylvain', 'sasha', 'douglas']

for name in names
  puts "#{name.capitalize} works at Le Wagon"
end

# *name* is called a parameter

# ⚠️ NOW YOU CAN FORGET ABOUT FOR LOOPS

# 2) loop do

i = 0
loop do
  puts 'I ❤️ ruby'
  i += 1
  break if i >= 10
end

# 3) .times

10.times do
  puts 'I love ruby!'
end

### Livecode
# Coding the Price is Right!
# Ask user for a price
# Keep asking *UNTIL* user guesses the right price

# Pseudo-Code
# 0 - Determining the price that my user should guess
# 1 - Asking user for a price
# 2 - Build a loop to keep asking - using *until*
# 3 - Tell my user they won

num_to_guess = rand(1..10) # Random Integer from 1 to 10

user_num = 0 # *Initializing* user_num

until user_num == num_to_guess
  puts 'Guess a number from 1 to 10!'
  user_num = gets.chomp.to_i # Turning user inpu into an integer
end

puts 'You guessed right!'


# Iterators: Most basic one, .each

le_wagon_staff = ['sylvain', 'sasha', 'douglas']

le_wagon_staff.each do |name|
  puts "#{name.capitalize} works at Le Wagon"
end

# do...end is called a block
# *name* is called a block paramater
# .each is called an iterator

#=======================


# Q & A


# Q1 - Does the order matter in a condition?
time >= 19 && time <= 23
time <= 23 && time >= 19
# Same thing

# && is 'stronger' than ||


# Refactoring the restaurant opening hours:

# puts 'What time is it right now?'
# time = gets.chomp.to_i # Integer

evening = time >= 19 && time <= 23 # true or false
noon = time >= 12 && time <= 15 # true or false

if evening || noon
  puts 'The restaurant is open!'
elsif time == 11 # DOUBLE equal
  puts 'The restaurant opens soon'
else # NO CONDITION - any other case
  puts 'The restaurant is closed ☹️'
end


# Q2 - Why is .each Ruby style?

# Ruby developers prefer .each
# Ruby has A LOT of other iterators that work the same as .each
# .each_with_index / .map / .select / .reject / .each_slice


# Q3 Two ways to write a block?

# Traditional way: do....end

le_wagon_staff = ['sylvain', 'sasha', 'douglas']

le_wagon_staff.each do |name|
  puts "#{name.capitalize} works at Le Wagon"
end

#One-line block syntax
#When you can write your block in 1 line, use {}
#One-line means 80 characters

le_wagon_staff.each { |name| puts "#{name.capitalize} works at Le Wagon" }


# Q4 - Can you explain about gets.chomp.to_i

# gets.chomp gets a String
# to_i turns a String into an Integer


# Q5 - What is that random 'p' you just typed??

# 3 ways to display somthing in the terminal
puts
print

# More used to debug:
p # equivalent to puts and .inspect

# Example:

numbers = ['1', '2', '3', '4']

p numbers

# Same as:
puts numbers.inspect


#======================


### Homework (Price is Right)
# 1) Give a hint to the user whether their guess was toop high or too low
# 2) When you congratulate the user, tell them how many times it took them to guess
