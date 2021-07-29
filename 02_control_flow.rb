### Controling Ruby Flow


# ==== RECAP ====

## Two core programming concepts last time:

# Data Types
'Sylvain' # String
"Sylvain" # String
5 # Integer
5.6 # Float
true
false
[1, 2, 3] # Arrays

# Variables
age = 38
# We are assigning the value (Integer) 38 to the variable age
# Some languages require you to declare the type of data you are storing in a given variable

# Getting input from the user
gets.chomp # returns a String
# usually, we want to store that input in a variable

# Interpolation
# Injecting Ruby code in a String
puts "I am #{age} years old"


# Tonight, we're going to see TWO more core notions 🥳


# ==== CONDITIONALS ====

## What does controlling the flow mean?

# until now, our code was running from top to bottom
# Controlling means "jumping around"


## Theory about conditionals

if condition # ⚠️ condition should return true or false
  # something happens if condition is true
elsif another_condition
  # something happens if another_condition is true
else # NO CONDITION HERE
  # Something happens for ANY OTHER CASE
end


## Logical Operators

# Checking equality / difference
3 == 3 # returns true # ⚠️ DOUBLE EQUAL SIGN
3 != 3 # returns false

# Checking more than / less than
3 >= 2 # returns true
3 <= 2 # return false

# Combining conditionals
&& # and
|| # or

# the 'not' operator
!true # => false

# ⚠️ Ruby is truthy
# Everything object in ruby is true, except for:
# nil and false


# ==== LIVECODE ====

# Coding the opening hours of a restaurant

# Pseudo-code
# 1 - Greet my user
# 2 - Ask the time
# 3 - Store the answer
# 4 - reply based on the time

puts 'Welcome to Jiro sushis!'
puts '====='
puts 'What time is it now?'
time = gets.chomp.to_i # As an integer

dinner_time = (time >= 19) && (time <= 23)
lunch_time = time >= 12 && time <= 15

if dinner_time
  puts 'Restaurant is open for dinner!'
elsif lunch_time
  puts 'The restaurant is open for lunch!'
elsif time == 11
  puts 'Restaurant opens soon'
else
  puts 'The restaurant is closed 😞'
end

# in an if statement, always put the most strict condition first

# Boolean Logic
true && true && false # return true if all statements are true
true || true || false # return true if at least one statement is true

