# First livecode - Introduction to Ruby

#### INTRODUCTION ####

# - Ruby is a progrmamming language, created by a Japanese person (Matsumoto) in 1993
# - IT got very famous when Rails (Ruby on Rails) in 2004
# - Shopify, Airbnb, Twitch, Twitter (originally), Github are all built with Rails

# - Today, we'll be covering TWO core programming notions
# Data Types
# Variables

#### DATA TYPES ####


### String
# It is used to write any text data
'Sylvain'
"Pierre"
' ' # Also a string (a string of 1 charcater)
'' # Empty string

### Integer
3
2
-2
0

### Float
5.3
-2.2
2.0

### Boolean
# In Ruby, there are two different data types for boolean
#TrueClass
true

# FalseClass
false

### Array
# In some other languages, it's often called... a list
[1, 2, 3] # Array of 3 integers
['sylvain', 'douglas', 'sasha'] # array of 3 strings
[true, 0, 'sylvain'] # Also an array
[] # Also an array - the empty array



#### DISPLAYING THINGS IN THE TERMINAL ####

# Three ways to display things

### puts
# Go to the next line
puts 'Sylvain Pierre'

### print
# do not go to the next line
print 'I am 42 years old'

### p
# DO NOT use p for other purposes than debugging
# Very convenient to know which type of data (which object) I am manipulating
p ['sylvain', 'douglas', 'sasha']
# p is an alias for puts .inspect:
puts ['sylvain', 'douglas', 'sasha'].inspect


#### METHODS ####

# In Ruby, everything is an object
# => We can call methods on these objects

### .class
# .class lets us check the data type (type of object) that we are manipulating
puts 'sylvain'.class # String
puts 5.class # Integer
puts [2, 3, 4].class # Array
puts ''.class # String


### String Methods

## Basic String mathods

puts 'sylvain'.capitalize # 'Sylvain'
puts 'MAtT'.downcase # 'matt'
puts 'Cat'.reverse # 'taC'
puts 'Prumsodun'.length # Returns an Integer

# We can chain methods - just make sure that you call the "right" method
puts 'sylvain'.upcase.length.capitalize # THIS DOESN't WORK

# Check Ruby Doc whenever you have some doubts
# https://ruby-doc.org/3.4.1/String.html

### Advanced String Methods

### chars
# chars explodes a string into an array of individual characters
p 'sylvain'.chars # => ['s', 'y', 'l', 'v', 'a', 'i', 'n']

### to_i
# to_i turns a String into an Integer
puts '7'.to_i # => 7


##### Integers Methods
puts 5 + 3
puts 5 - 2
puts 5 / 2 # Returns the quotient of the euclidian division

puts 5.0 / 2 # Returns a float
puts 5 / 2.0
puts 5.to_f / 2

puts 5 * 2

## Advanced Integer Methods
puts 5.odd? # returns true
puts 5.even? # returns false
puts 5.to_s


#### VARIABLES ####


age = 23

# Some vocabulary:
# 1) age is the name of the variable (IT IS NOT A STRING)
# 2) = is the assignment operator (IT IS NOT YOUR MATHEMATICAL EQUAL SIGN)
# 3) In other languages, the assignment operator can be written differently:
# <=
# <=>
# ==
# ===

# Proper vocabulary:
# - the Integer 23 is being *assigned to* the variable called age
# In basic English:
# - I put 23 in a box called age

# Two conventions:
# 1) variable names are written in lower_snake_case - for example:
# user_age
# first_name

# 2) Use explicit names for your variables
user_age = 23 # VERY GOOD
n = 32 # VERY BAD




### What can we do with variables?
user_age = 23

# Call methods
puts user_age.class

# Any method
puts user_age + 1

# Re-assign a variable
user_age = 32
puts user_age # => 32

user_age = 'twenty three'
puts user_age # => 'twenty three'

# Ruby doesn't care about the type of data that is stored in a given variable (this is called 'duck typing')

# Incrementing a variable

age = 23

age = age + 1
# => 24 is now stored in age

age += 1 # This is a shortcut for the above syntax (also called Syntax Sugar)
# => 25 is now stored in age


### LIVECODE ####

# Let's write a shjort program that asks a user their name and age, greets them and tell them how old they will be next year

# Let's do pseudo-code

# 0) Intro message - OK
puts 'Welcome to our first Livecode!!'
puts '========'
puts ''

# 1) Ask the user for their name - OK
puts 'What is your name?'
print '> '

# 2) Get the user input and store it
user_name = gets.chomp # Gets the user input AS A STRING

# 3) Ask user for their age
puts 'How old are you?'
print '> '

# 4) Get the user answer and store it
user_age = gets.chomp.to_i

# 5) Calculate the user age next year
# user_age_next_year = user_age + 1

# 6) Greet the user with a final sentence including their name and age next year

puts 'Hello ' + user_name + '! ' + 'Next year, you will be ' + user_age_next_year.to_s + '. This is quite old...'
# The above code is an abomination, never do that

# Let's use interpolation
# Interpolation lets us inject RUBY CODE into a String
puts "Hello #{user_name.capitalize}! Next year, you will be #{user_age + 1} :("


##### Q&A #####

### Q1 - difference between '' and ""
# interpolation doesn't work with ' '


### Q2 - WHY RUBY?
# - Ruby was designed for developer happiness
# - In Ruby, there are a lot of methods that are not available with other languages (reverse for example)
# - Programming languages come and go with community / company adoption

### Q3 - Widely used languages?
# - Low level languages: C#
# - Browser language: JavaScript
# - Data language: Python
