### Looping with Ruby


### Fourth core programming notion: Looping
# Looping is the reason why computers exist


# First, new data type: Range

1..10 # 1 to 10
1...10 # 1 to 9

(1..10).to_a # => Array of 10 integers, from 1 to 10
('a'..'z').to_a # => The alphabet array

# to_a turn a range into an array

#========== UNCOMMON LOOPS IN RUBY ============

# Loops that are not used so much in Ruby
# (you learn them, then you forget them)


## for loop
# exists in Ruby, but nobody uses it

for i in 1..10
  # puts i
end


## for loops to iterate over arrays
le_wagon_team = ['sasha', 'douglas', 'yann']

for staff in le_wagon_team
  # puts "#{staff.capitalize} works for Le Wagon!"
end


## loop do

counter = 0 # initializing
loop do
  puts 'I ♥️  Ruby'
  counter += 1 # incrementing my counter by 1
  break if counter == 10
end


## .times do

10.times do
  puts 'I love Ruby!'
end


#========== COMMON LOOPS IN RUBY ============

## until / while


# LIVECODE

# Price is Right
# Let the user take a guess *until* he guesses the right price

# Pseudo-Code
# (writing in English step by step what we want to do)

# 0.5 - Generate a price to guess DONE
# 1 - Ask user to guess the price
# 2 - get user answer and store it in a variable
# 3 - Compare that guess to the price to guess
# 4 - Keep asking *until* the user guesses right!
# 5 - Nice congrats message



price_to_guess = rand(1..10)

puts 'Welcome to our game'
puts ''

# puts 'Try to guess the price! (from 1 to 10)'
# user_guess = gets.chomp.to_i

user_guess = 0 # Initializing
until user_guess == price_to_guess
  puts 'Try to guess the price! (from 1 to 10)'
  user_guess = gets.chomp.to_i
end

puts 'Nicely done! You guessed right'

# HOMEWORK
# 1) Give a hint to the user about their guess (too high / too low)
# 2) At the end, tell the user how many guesses it took them to find the right answer



## Iterators
# the most basic iterator is .each


le_wagon_team = ['sasha', 'douglas', 'yann']

le_wagon_team.each do |staff|
  puts "#{staff.capitalize} works at Le Wagon (and they love it)"
end


#========== Q & A ============

# 1️⃣ - Why is it bad to copy / paste code ?

# One of the most important concepts in programming: DRY
# Don't Repeat Yourself
# When you copy / paste, you're going to repeat yourself


# 2️⃣ - What does .to_i do ?

# .to_i turns a String into an Integer

'5'.to_i # => 5 as an integer
5.to_s # => '5' as a String
(1..10).to_a # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


# 3️⃣ - Can you explain again the .each syntax?

# .each is an ARRAY method (note: also used for Hashes)

le_wagon_team = ['sasha', 'douglas', 'yann']

le_wagon_team.each do |staff|
  puts staff.class
end

# In Ruby, an array can contain elements of different classes:

random_array = [1, 'sylvain', false]

# but most of the time, arrays contain all elements of the same class (e.g. all strings, all integers...)
# so that we can iterate over them.


# 4️⃣ - what are those || in the .each syntax?

# these are called pipes
# it is just syntax


# 5️⃣ - any problem initalizing a variable to 0?

# No problem - just initialize with what makes sense in that case.



