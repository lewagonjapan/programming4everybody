### Controling Ruby Flow


# ===== RECAP =====

### Data Types

'Sylvain' # String
"Sylvain" # Also a String
# We cannot do String interpolation with single quotes

5 # Integer
5.4 # Float
true # TrueClass
false # FalseClass
[1, 2, 3] # Array of 3 elements

### Variables

age = 25

# The Integer 25 is assinged to the variable age
# variables have to be written in lower_snake_case
# = is called the assignment operator

### Miscellaneous

# Getting user input
puts 'Hello, how old are you?'
user_age = gets.chomp # Gets user input as a String

# String Interpolation
puts "Welcome, you will be #{user_age.to_i + 1} years old next year"



# ===== CONDITIONALS =====

# In Codecademy, they called this lesson "Controlling the flow"

# Flow here means flow of the code
# By default, our code runs from top to bottom
# Controlling the flow will let us "Jump Around"


### Theory

if condition
    # This part will run if the condition is true
elsif another_condition
    # This code will run if another_condition is true
else # NO CONDITION HERE
    # This code will run in any other case
end

# Logical Operators

2 == 3 # Checks Equality, in that case it will return false
2 != 3 # Checks inequality, in that case it will return true

2 > 3 # greater than, in that case returns false
2 < 3 # smaller than, in that case returns true

&& # Logical and
|| # logical or

!true # 'not' operator, in that case, returns false


# We can store those conditions:
result = 2 > 3
puts result # => false

# Ruby is truthy
# In Ruby, everything is true except... false and nil

if 'sylvain'
    puts 'This was considered true'
end

# Will print 'This was considered true'


# ===== LIVECODE 1 =====

# Code the opening hours of a restaurant

puts 'Welcome to Jiro! 🍣🍣🍣'
puts 'What time is it now?'
print '> '
time = gets.chomp.to_i

dinner_time = time >= 19 && time <= 23
lunch_time = time >= 12 && time <= 15

if dinner_time
    puts 'The restaurant is open for omakase dinner!'
elsif lunch_time
    puts 'The restaurant is open for lunch!'
elsif time == 11
    puts 'The restaurant opens soon!'
else
    puts 'Sorry, the restaurant is closed... 😭'
end

###  Boolean Logic

# with &&, returns true if all conditions are true
true && true && false # => false
# with ||, returns true if at least one condition is true
true || false || false # => true

