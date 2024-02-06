# First livecode - Introduction to Ruby



# ===== Introduction =====


# Ruby was created in 1995 - built by Matsumoto-san (Ruby is as old as Javascript)

# Ruby got realllly popular thanks to Rails: 
# Twitch / Shopify / Airbnb / ...
# Rails is the most efficient web framework to build web applications

# Ruby is very beginner-friendly, and very often reads like English


# Tonight, we're going to cover TWO core programming notions

# ======= DATA TYPES ======

### String
# Used to represent'text'
'Sylvain' # single quote
"Pierre" # double quote

### Integer
4
-2
0

### Boolean (in Ruby, two different data types)
# TrueClass
true

# FalseClass
false

### Float
5.6
-2.1
4.0

### Array (In some languages, we call it list)
# Delimited by *square* brackets
[5, 4, 1] # Array of 3 Integers
['sylvain', 'pierre'] # Array of 2 Strings
['le wagon', 3, true] # Array of 3 elements
[] # This is the empty array


### Displaying in the terminal
# 3 ways:

### puts
# goes to the next line
puts 'Hello Mateo'

### print
# doesn't go to the next line
print 'Welcome'

### p
# Only used for debugging - lets us know the type of data (object) we manipulate
p ['Andrew', 'Nakia', 'Mateo']

# p is a shortcut for:
puts [1, 2, 3].inspect


### In Ruby, everything is an 'object'
# We can call methods on these objects

### .class
# .class is a method that lets us 'check' of which class is a given object
puts 'Mateo'.class # String
puts 5.class # Integer
puts 4.0.class # Float
puts [].class # Empty Array
puts ''.class # Empty String


#### Integer Methods #####

### Basic methods
puts 5 + 2 
puts 5 - 2
puts 5 / 2 # returns the quotient of the euclidian division
puts 5 * 2

puts 5.0 / 2 # to get the exact result

### Advanced methods
#.even?
#
puts 5.even? # => false

# .odd?
puts 5.odd? # => true

# # .to_s
p 5.to_s
puts 5.to_s.class # => String
# We can actually chain methods!!
# Make sure to call the method on a 'valid' object

#### String methods #####

### basic methods
puts 'joel'.length # => 4 (number of characters in that string)
puts 'Joel'.downcase # => joel
puts 'jOEL'.capitalize # => Joel | useful to reformat first / last names

puts 'joel'.reverse # reverse is actually not a usual method

# Advanced
p 'joel'.chars # => ['j', 'o', 'e', 'l']
puts '5'.to_i.class # turns a string into an Integer


# ====== VARIABLES =======

age = 23

# Basic concepts
# - A variable is a box to store something
# - The integer 23 is *assigned* to the variable named 'age'

# - '=' is called the assignment operator
# In some other languages, assignment operator might be:
# <=> 
# << 
# ===
# <= 

# TWO conventions: 
# - variables in Ruby are written lower_snake_case
first_name = 'sylvain'

# # - Please, pretty please, use explicit names for your variables:
n = 23 # BIG NO NO
user_age = 23 # GOOD


# Advanced Concepts related to variables
age = 23

# puts age.class
# puts age

## Incrementation
age = age + 1
# OR
age += 1 # is syntax sugar for age = age + 1


# Reassigning
user_age = 25
user_age = 'twenty age'
# Ruby doesn't care about the type of data stored in a variable


# Concatenation
first_name = 'sylvain'
last_name = 'pierre'
puts first_name + last_name
# => 'sylvainpierre'

# ===== LIVECODE ======

# Ask a user for their name and age, greet them and tell them how old they will be next year

# break down the problem in small steps
# Pseudo-code - IN PLAIN ENGLISH

# 0 - Greeting the user DONE
puts 'Welcome to our first mini-program'
puts '======'
puts ''

# 1 - ask the user what their name is OK
puts 'What is your name?'
print '> '
# 2 - get the user answer and store the user answer OK
user_name = gets.chomp # Stores the user input as a STRING
# p user_name

# 3 - ask user for their age
puts 'How old are you?'
print '> '
# 4 - store the user answer
user_age = gets.chomp.to_i # Storing the age as an Integer

# 6 - compute the age next year
age_next_year = user_age + 1

# 7 - build the final response
# puts 'Hello ' + user_name + '. Next year, you will be: ' + age_next_year.to_s + '!'

# Interpolation
# Interpolation lets us inject *Ruby code* directly into a String
puts ''
puts "Hello #{user_name.capitalize}! Next year you will be... #{age_next_year}"

# Interpolation DOESN'T WORK with single quotes


# === Q&A =====

# Q1) how to concatenate 'with a space'
puts 'sylvain' + ' ' + 'pierre'

# Q2) how to put double quote in a string
# Two ways:

puts 'sylvain " pierre'
# OR
puts "sylvain \" pierre" 

# in a String, the \ character 'ignores' the next character

