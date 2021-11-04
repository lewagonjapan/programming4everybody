### Looping with Ruby


# ====== LOOPING ======

# Looping is actually what makes computer powerful
# but before that... let's introduce a new data type

puts (1...10).class # => Range


### Three 'not so used' ways to loop

# 1) for loop

# very popular in some other languages, NOT IN RUBY

for i in 1..10
    puts i
end


# 2) loop do

i = 0
loop do 
    puts "I love Ruby #{i} times"
    i += 1
    break if i == 10
end


# 3) .times loop

10.times do 
    puts 'I love Ruby!'
end


# Now, more common ways to loop

# === LIVECODE ====

# Let's code the price is right

# Pseudo-Code
# 0 - greet our user! OK
# 00 - set a price to guess - OK
# 1 - aks the user for their guess - OK
# 2 - get the user answer (as an integer) and store it in a variable - OK
# 3 - compare it to the price to guess
# 4 - keep asking *until* the user guesses right


puts 'Welcome to our Price is Right game 💰'
puts '========='
puts ''

# Generating a random price to guess
price_to_guess = rand(1..10)

# Initializing user_guess (give user_guess a value)
user_guess = 0

# Looping until a condition is met
until user_guess == price_to_guess # until this statement is true, I will keep looping
    puts 'Guess a number? (from 1 to 10)'
    user_guess = gets.chomp.to_i
end

puts 'Congratulations, you guessed the right price!'


### Iterating over arrays

# Recap about Arrays

[1, 2, 3] # array of 3 Integers
[] # Empty array
['sasha', 'yann', 'douglas', 'sylvain'] # array of 4 strings
#   0        1        2           3
# In arrays, we start counting at index 0

# Although not common, we can store 'random' elements in an array
[1, 'sylvain', 4.3, false] # array of 'random' elements


### for loop with arrays

members = ['sasha', 'yann', 'douglas', 'sylvain']

for member in members
    puts "#{member.capitalize} works at Le Wagon Tokyo"
end


### The actual Ruby way to iterate (loop) over an array is: .each

members.each do |member|
    puts "#{member} works at Le Wagon Tokyo"
end


# .each is the most basic iterator
# next Tue, we will see a lot of other more powerful iterators

# ==== Q & A ======

# Q1 - Homework from last time

name = 'sylvain'

name[0].upcase + name[1...name.length]



# Q2 - Why should we not use 'loop do'?

# it is not the ruby way of doing things

# counter = 0

# with a loop do, I need to look for the 'break' condition in hundreds of lines of code
loop do 
    puts 'I love Ruby!'
    counter += 1 # Incrementing my counter
    break if counter == 10
end


# with a while loop, the condition comes first
while counter < 10
    puts 'I love Ruby!'
    counter += 1
end


# Q3 - is there any difference using parenthesis in && conditionals

# This:
time >= 12 && time <= 15

# is strictly equivalent to:
(time >= 12) && (time <= 15)


# Q4 - what is 'unless'?

time = 13
lunch_time = time >= 12 && time <= 15

# This:
if lunch_time
    puts 'it is lunch time!'
end

# Can be rewritten with unless as:
unless !lunch_time
    puts 'it is lunch time!'
end



# ===== HOMEWORK =====

# 1) add a feature that tells the user if their guess was too high or too low
# 2) add a feature to count how many times it took our user to guess