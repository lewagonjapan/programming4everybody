### Controling Ruby Flow


### Recap
# Two core programming notions last time?
# Data Types

# Integer
4
5

# Strings
'Sylvain Pierre'
"Le Wagon"

# With double quotes, we can use Interpolation
name = 'Sylvain'
"Your name is #{name}" # Interpolation

# Float
4.5

# Arrrays
[] # This is an empty array
[4, 5, 6]
['Sylvain', 'Pierre']
[4, 'Sylvain', 4.5, ['Sylvain', 'Pierre']]

# Boolean
puts true.class
puts false.class

# Variables
age = 37
# The Integer 37 is assigned to the variable age

# Re-assigning
age = 38

# Incrementing
age = age + 1
age += 1

# Ruby doesn't care about the data type stored in a variable
age = 'Thirty Seven'

#========================

# Two core programming notions for today
# Conditional
# Looping - This is why computers are powerful!!


### Conditional
# Theory:
# if...else...end
# ==   !=

if condition
  # condition is true, do something
else
  # Do something else
end
# *condtion* should return true / false

# Why do we talk about controlling the flow?
# In 'normal' situation, code runs from top to bottom

### Livecode

# Restaurant's opening hours
# Pseudo-code (code written with words)
# 1 - Ask user what time is it?
# 2 - Get user answer AND store that answer in a variable
# 3 - Depending on the time, tell the user *if* restaurant is open or not

puts 'What time is it right now?'
time = gets.chomp.to_i # Integer

if time >= 19 && time <= 23
  puts 'The restaurant is open for dinner!'
elsif time == 11 # DOUBLE equal
  puts 'The restaurant opens soon'
elsif time >= 12 && time <= 15
  puts 'The restaurant is open for lunch!'
else # NO CONDITION - any other case
  puts 'The restaurant is closed ☹️'
end

# In a if elsif statement, the order matters
# Whenever using if elsif..., write the *strictest* condition first

# Logical or
||

# checking the difference
!=

# Boolean Logic
# Learn it, own it

# With &&, true if EVERYTHING is true
true && true # => true

# With ||, true if AT LEAST ONE is true
true || false # => true










