# First livecode - Introduction to Ruby

# Ruby was born in 1995
# Rails Framework (born in 2004) - Famous Rails apps: Kickstarter, Airbnb, Basecamp
# Twitter was also built with Rails originally

# First two core programming notions
# 1) Data Types
# 2) Variables


### Data Types

## List of Data Types

# String
"Hello World!"
'Hello!'
# ⚠️ Interpolation does not work with single quotes (see below)

# Integer
5
4
-3

# Float
5.3
5.0
-1.2

# Boolean
true
false

# Array
[1, 2, 3] # Array of 3 elements, all of them are integers
['Sylvain', 'Sasha'] # Array of two Strings
[1, 'Sasha', 4.5] # Array of 'random' elements
[] # This is the empty array


# In Ruby, everything is an object
# We can call methods on objects by using the notation .name_of_the_method

# first method: .class
# the .class method allows us to check the type of data (also called the class) we are manipulating
'Hello World'.class # => String


## Common methods for each Data Type

# Integer methods

# Normal operations
5 + 5 # => 10
5 - 3 # => 2
5 * 2 # => 10
5 / 2 # => 2
# When we divide two Integers, the result is an Integer
5.0 / 2 # => 2.5
# To have the exact result, at least one needs to be a Float

# Checking odd or even
5.even? # => False
5.odd? # => True
# ⚠️ The ? is part of the method name: .odd?

# to_s: turning an Integer into a String
5.class # => Integer
5.to_s.class # => String

# In Ruby, we can chain methods (for ex: .to_s.class )
# ⚠️ make sure that you call the right method on the right type of data.
# To do that, Ruby Doc is your best friend!
# For example, Ruby doc for Strings:
# https://ruby-doc.org/core-2.6/String.html

# String methods

# .reverse
'Sylvain'.reverse # => 'niavlyS'

# .length
' '.length # => 1
# ⚠️ in programming, space is a character and counts as 1

# .capitalize
'sylvain'.capitalize # => 'Sylvain'

# .dowcase
'SylvAiN'.downcase # => 'sylvain'

# Concatenation
'Sylvain' + 'Pierre' # => 'SylvainPierre'


## Displaying in the terminal: three methods
# normal display
puts # Skips a line after
print # Doesn't skip a line after

# debugging display
p # ⚠️ only for debugging



### Second Core Notion: Variables

# A variable is a box to store something

first_name = 'sylvain'
# We are assigning the value 'sylvain' to the variable first_name
# = is called the assignment operator

# ⚠️ Convetions:
# in Ruby, variables are lower_snake_case
# Please, Pleeaaaaase write explicit variable names
f = 'sylvain' # DON'T DO THAT

# Why variables?
# Allows you to store values, and more importantly,to re-use them

# Re-assigning variables
first_name = 'sylvain'
puts first_name # => 'sylvain'
first_name = 'Sasha'
puts first_name # => 'Sasha'

# ⚠️ Ruby doesn't care about the data type that you store
first_name = 42 # This will work


# Incrementation
# Traditional notation
num = 37
num = num + 1

puts num # => 38

# Syntax Sugar (nicer way to write)
num = 37
num += 1

puts num # => 38



### Mini-program

# Ask their name and age to the user, and build a full sentence to tell them how old they will be next year!

# Logic:
# 1) ask the name
# 2) store the user answer
# 3) ask the age
# 4) store the user answer
# 5) format the answers
# 6) build the final sentence

# Use gets.chomp to get user name from the terminal
puts 'Hey!! What is your first name?'
print '> '
first_name = gets.chomp # gets.chomp returns a String

# Use gets.chomp.to_i to get user age from the terminal
puts 'How old are you?'
print '> '
age = gets.chomp.to_i # As an Integer
# ⚠️ We are casting 'age' as an Integer with .to_i

# formatting / calculating
formatted_name = first_name.capitalize
age_next_year = age + 1

# Use interpolation to inject computed answers in a String
puts "Hey #{formatted_name}, next year you'll be #{age_next_year}!! You old now."

# #{} is called interpolation, it allows us to inject Ruby code in a String
# ⚠️ Interpolation only works with DOUBLE QUOTES



### Q & A

# Q1 - Can we increment using another variable?
number = 2

age = 37

age += number

puts age # => 39


# Q2 - Can we do -= or *=
age = 37
age -= 3
puts age # => 34

age = 37
age *= 2
puts age # => 74


# Q3 - What if we try to add two things that have different types?
age = 37
age += 'twenty'
# ⚠️ Error message: can't coerce a string into an Integer


# Q4 - is .upcase and .capitalize! the same thing?

# .upcase!
first_name = 'sylvain'
puts first_name # => 'sylvain'
first_name.upcase!
puts first_name # => 'SYLVAIN'

# .upcase
first_name = 'sylvain'
puts first_name # => 'sylvain'
first_name.upcase
puts first_name # => 'sylvain'

# upcase! modifies the original variable first_name
# ⚠️ ! method are called destructive or dangerous methods
# ! is part of the method name
# prefer non-destructive methods, modifying original variables is not good practice


# Q5 - Do we need spaces with #{age + 1}
# No, but it's more readable with spaces 😉
age = 37
puts "You are #{age+1}" # => 'You are 38'


# Q6 - Why do we prefer Interpolation over Concatenation ?

'you are ' + age + ' Years old' # This will give an error (age is not a string)


# Q7 - Why do we need .chomp?

# .chomp gets rid of special characters at the end
puts 'What is your last name?'
last_name = gets # user types 'sylvain' and then 'Enter'

p last_name # => 'sylvain\n'


# Q8 - What is ** and % ?

# ** is equivalent to 'to the power of'
4 ** 3 # is equvalent to: 4 * 4 * 4, i.e. 64

# % stands for modulo
# returns the remainder of the euclidian division

11 % 4 # => 3

# It is very commonly used to check divisability:

12 % 4 == 0 # Is 12 divisible by 4? Will return 'true' in that case


# Homework: Try to reproduce .capitalize without using it
# Hint: you can still use .upcase though






























