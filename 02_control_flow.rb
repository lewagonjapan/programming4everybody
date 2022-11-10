### Controling Ruby Flow


# Recap

# Data Types
'Declan' # String
"Declan" # String
# Interpolation only works with double quotes

4 # Integer
4.5 # Float (.to_f to turn an Integer into a float)
true # TrueClass
false # FalseClass

[1, 2, 3] # Array


# Variables

age = 23

# = is the assignment operator
# The Integer 23 is assigned to the variable called 'age'

# Getting input from the user
puts 'What is your name?'
user_name = gets.chomp

# Interpolation
# Injecting *Ruby code* in a String
puts "Welcome #{user_name.capitalize}"


# Today we'll see TWO core notions again

# Controlling the flow
# Until now, our code was running line by line, from top to bottom

# ==== Conditionals ====

# Theory

if condition
    # This code will run whenever condition is true
elsif another_condition
    # This code will run whenever another condition is true
else # NO CONDITION HERE
    # This code runs in any other situation
end

# # Logical Operators

# Checking equality and inequality
3 == 4 # => false (== returns true if both objects are identical)
3 != 4 # => true

# Greater then / smaller than
3 >= 4 # => false
3 < 4 # => true

# Booolean operators
&& # logical and
|| # logical or

# the 'not' operator
!true # => false

# ⚠️ This ! is different from .capitalize!

# Ruby is truthy

# everything in Ruby is true, except for... false and nil

if 'sylvain'
    puts 'This was considered true'
end


# ==== Livecode 1 =====

# Let's code the opening hours of a restaurant!

# ask user what time it is, and tell them the restaurant is open *if* it's after noon

# 0) Greet the user!
# 1) Ask the user what time it is
# 2) Tell the user restaurant is open *if* after noon

puts 'Welcome to Jiro sushi!! 🍣🍣🍣'
puts ''

puts 'What time is it now?'
print '> '
time = gets.chomp.to_i

dinner_time = time >= 19 && time <= 23
lunch_time = time >= 12 && time <= 15

if time == 11
    puts 'The restaurant opens very soon!'
elsif dinner_time
    puts 'The restaurant is open for dinner'
elsif lunch_time
    puts 'The restaurant is open for lunch!'
else
    puts 'Sorry, the restaurant is closed...'
end


# Boolean Logic

# && - returns true if all expressions are true
true && true && false # => false

# || - returns true if at least one expression is true
true || false || false # => true