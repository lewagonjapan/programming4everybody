### Controling Ruby Flow

# ===== RECAP =====

# Last time we saw already two core programming notions

## Data Types

'Alexander' # String
4 # Integer
4.6 # Float
true #TrueClass
false #FalseClass
[1, 2, 3] # Arrays


## Variables
age = 23

# 23 is assigned to the variable age
# age is the name of the variable
# 23 is the value assigned to it
# = is called the assignment operator

## How to get an input from the user

user_name = gets.chomp # as a String
user_age = gets.chomp.to_i # as an integer

## String interpolation

# Allows you to inject some ruby code in a String
# Only works with double quotes
my_name = 'sylvain'
puts "My name is #{my_name.capitalize}!"



# ====== CONTROLLING THE FLOW =======

# So far, the code that we wrote was running from top to bottom
# Controlling means "jumping around"

### Conditionals

# Theory

if condition # This is true
    # Do something
elsif another_condition # This is true
    # Do something else
else # NO CONDITION (every other case)
    # Do another thing
end

# Logical Operators

'2' == 2 # == checks equality - in that case, false
'2' != 2 # != checks inequality - in that case, true
2 > 3 # false 
2 < 3  # true
>= # greater or equal to
<= # smaller or equal to
&& # and
|| # or
!false # => true

# 😱 '!' HAS NOTHING TO DO WITH methods that end with ! 

# We can store conditions in variables

result = (2 > 3) # result will have false stored in it


# Ruby is a truthy language
# => In Ruby, everything is true except false and nil

if 'sylvain' # 'sylvain' is true 😱
    puts 'This was true' 
end


# ====== LIVECODE ======

# Coding the opening hours of a restaurant

puts 'Welcome to our restaurant opening checker!'
puts 'What time is it now?'
print '> '
time = gets.chomp.to_i

lunch_time = time >= 12 && time <= 15
dinner_time = time >= 19 && time <= 23

if dinner_time
    puts 'Jiro is open for dinner'
elsif lunch_time
    puts 'Jiro is open for lunch, enjoy your sushis!'
elsif time == 11
    puts 'Jiro will open soon 🍣'
else # No condition
    puts 'Sorry, the restaurant is closed... 😭'
end

# Best practices
# 1) Always write the strictest condition first
# 2) Try to go for the most readable code


# Boolean logic
# &&, will return true if every part is true
# ||, will return true if at least one is true

# Example:
true && true && false # => false
true || false || true # => true