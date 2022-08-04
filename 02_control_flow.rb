### Controling Ruby Flow


# ==== RECAP ====

#  Last time we saw: Data Types & Variables

### Data Types

# Strings
'Sylvain'
"Sylvain"

4 # Integer
-4 # Integer
4.3 # Float
-1.5 # Float

true # TrueClass
false # FalseClass

[1, 2, 3] # Array

### Variables
age = 23

# The Integer 23 is *assigned* to the variable called age
# = is called the assignment operator

### Miscellaneous

# getting input from the user

puts 'How old are you?'
print '> '
user_age = gets.chomp.to_i # Gets user input AS A STRING

# Interpolation

# Interpolation is a way to inject Ruby code into a String
# It only works with ""

puts "Next year you will be #{user_age + 1}!"



# === CONDITIONALS ===

# Controlling the flow

# So far, our code has been running from top to bottom
# The flow of our code is top to bottom

# controlling the flow lets us change that


### Theory

if condition
    # run this code if the condition is true
elsif another_condition
    # run this code if another_condition is true
else # NO CONDITION HERE
    # any other case
end


## Logical Operators

# Checking equality and difference
4 == '4' # => false
4 != '4' # => true

# Checking greather than / less than
4 >= 3 # =>  true
4 <= 3 # =>  false

# Boolean logic operators
# && # Logical and
# || # Logical or

# 'Not' operator
!true # => false

# ⚠️ this is different from .capitalize!

# We can 'store' the result of those operations
result = 4 > 3
# puts result


## Ruby is truthy
# Everything in Ruby is true, except for... nil and false

if 'khan'
    puts 'This was considered true'
end


# === LIVECODE ===

# Let's code the opening hours of a restaurant

puts 'Welcome to Jiro Sushi!! 🍣🍣🍣'
puts  ''
puts 'What time is it now?'
print '> '
time = gets.chomp.to_i
puts ''

dinner_time = (time >= 19) && (time <= 23)
lunch_time = (time >= 12) && (time <= 14)

if time == 11
    puts 'The restaurant opens soon 🤤'
elsif dinner_time
    puts 'Jiro is open for dinner!'
elsif lunch_time
    puts 'The restaurant is open for lunch!'
else
    puts 'Sorry, the restaurant is closed... 😭'
end

# With several conditions, always put the strictest conditions first


# Boolean Logic

# With &&, will return true if all elements are true
true && true && false # => false

# With ||, returns true when at least one element is true
true || false || false # => true
