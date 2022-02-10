### Controling Ruby Flow

# ===== RECAP =====

# Last time, we saw 2 core programming notions

# Data Types (type of objects, classes)
'Sylvain' # String
"Sylvain" # String
# Difference between single and double quotes: you can't do interpolation with double quotes
5 # Integer
4.1 # Float
true # TrueClass
false # FalseClass
[1, 2, 3] # Array

# Variables
age = 38
# the value (integer) 38 is assigned to the variable age
# = is called the assigment operator
# age is the name of the variable, in lower_snake_case

# Getting input from the user
puts 'What is your name?'
name = gets.chomp # gets the input as a String

# Interpolation
# A way to inject *Ruby code* in a String
puts "Hello #{name.capitalize}, welcome to our 2nd session!"


# Today, we are going to see TWO more core programming notions

# ===== CONDITIONALS =====

# In Codecademy, they called it Controlling the Flow
# This means you can choose where the code starts and finishes

### Theory of conditionals

if condition
    # Do something if the condition is true
elsif another_condition
    # Do something if this other condition is true
else # NO CONDITION HERE
    # Do something else for any other case
end

### Logical Operators

'2' == 2 # Checks the equality
'2' != 2 # Checks the inequality
2 > 3 # Checks whether an integer is greater than another
2 < 2 # Smaller than

&& # logical AND
|| # Logical OR

!true # Opposite operator - In that case, returns false
# # Be careful, this ! is different from ! methods (.capitalize!)

# We can store the result of those logical operations
result = '2' == 2
puts result

# Ruby is truthy
# In Ruby, everything is true, except for... false and nil

if 'sasha'
    puts 'This was true'
end

# ===== LIVECODE =====

# Coding the opening hours of a restaurant

puts 'Welcome to Jiro!! 🍣🍣🍣'
puts '======'
puts 'What time is it now?'
time_now = gets.chomp.to_i

dinner_time = time_now > 19 && time_now < 23
lunch_time = time_now > 12 && time_now < 15

if dinner_time
    puts 'Jiro is open for dinner!'
elsif lunch_time
    puts 'Jiro is open for lunch!'
elsif time_now == 11
    puts 'Jiro is going to open soon!'
else
    puts 'Jiro is closed... 😭'
end

# The order of conditions in if...elsif matters
# Always check for the most strict conditions first


# Boolean Logic
true && true && false # false
true && true # true

true || false || false # true
false || false # false

# With &&, returns true if everything is true
# With ||, returns if at least one is true