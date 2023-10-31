# First livecode - Introduction to Ruby

# ==== Intro to Ruby ====

# Ruby is a programming language - created in 1995, Matsumoto-san

# Ruby became famous thanks to its popular web framework, Rails

# Rails was used to build: Airbnb, Shopify, Kickstarter, Github, Twitch

# =====

# Today, we are going to cover TWO core programming notions

# Data Types & Variables

# ====== DATA TYPES ======

### Strings
# A way to represent text data
'this is a string'
"this is also a string"
# interpolation doesn't work with single quotes

'a' # This is still a string of 1 character

### Integer (Number is not a data type)
# A way to represent whole numbers
5
-1
2

### Float
# Numbers with decimals
5.2
3.1
-2.445322

### (Boolean is not a data type in Ruby)
true # TrueClass (class is just another way to say Data Type)
false # FalseClass

### Array
# An array is a way to store multiple elements
# A way to list elements
['sasha', 'douglas', 'yann'] # An array of 3 elements, each of them are Strings
[0, 4, 1] # An array of 3 integers
[] # This is the empty array
[4, 'sasha', true, 3.0] # This is 'fine' in Ruby
[] # Empty Array


### We need a way to display things in the terminal
# THREE ways:
## puts
# puts start a new line
puts 'Hello World!'

## print
# print doesn't start a new line
print 'I am Sylvain'
print 'I am 40 years old'

## p
# p lets us 'inspect' what object we are manipulating
# p is very useful for debugging
p 'sylvain'
p [3, 1, 4]
puts ['sasha', 'sylvain'].inspect


# In Ruby, everything is an Object.
# We can call methods on those objects

## .class
# .class tells you what data type the object is
puts 'chieri'.class # => String
puts 0.class # => Integer
puts true.class # => TrueClass
puts [].class # => Array


### Integer Methods

# basic Integer methods
puts 5 + 2
puts 2 - 3
puts 3 * 7
puts 7 / 2
puts 7 % 2

# 'advanced' Integer methods
puts 5.even?
puts 5.odd?
puts 5.to_s.class
# The ? is part of the method name - by convention, they return true or faldse 

### Basic String Methods
puts 'sYLVain'.capitalize # => 'Sylvain'
puts 'saSHa'.upcase # => 'SASHA'
puts 'mummy'.reverse # => 'ymmum'

## Advanced String Methods
p 'sylvain pierre'.chars
puts '5'.to_i.class # => Integer

# Concatenation
puts 'sylvain' + 'pierre'



# ==== VARIABLES =====

# Variables let you store 'things' to be able to re-use it later

age = 23

# age is a 'box' in which I store the mnumber 23
# I am assigning the Integer 23 to the variable called age

# = is called the assignment operator
# In some other languages:
# <= 
# <=> 
# ==
# <->

# Conventions:
# - by convention, variables are lower_snake_case
# - please, pleaaaaase always use EXPLICIT names for your variables

# Let's cover some advanced concepts for variables

age = 23

# We can call methods on variables
puts age.class

# # We can use all methods seen before:
puts age.odd? # YES, this works
puts age.capitalize # NO, this doesn't work

first_name = 'sylvain'
last_name = 'pierre'

puts first_name + last_name

# In Ruby, we can change the data type assigned to a variable

age = 23
puts age

# Re-assigning
age = 'twenty three'
puts age



# ===== LIVECODE =====

# Ask user for their name and age, and build a sentence to tell them how old they will be next year!

# let's do pseudo-code together
# writing in plain English, step by step, what we want to do:

# 0) Greet the user! OK
puts 'Welcome to our first mini-program!'
puts ''

# 1) ask user for their name OK
puts 'What is your name?'
print '> '

# 2) Store the user input in a variable OK
user_name = gets.chomp # Stores the user input as a STRING

# 3) ask user for their age OK
puts 'How old are you?'
print '> '

# 4) Store the user input in another variable
user_age = gets.chomp.to_i # Stored as an INTEGER

# 5) compute the age next year
age_next_year = user_age + 1
# puts age_next_year

# 6) build the final answer and print it out

# puts 'Hello ' + user_name + '. Next year you will be ' + age_next_year.to_s

# Interpolation:
# A way to inject ruby code in a String
puts "Hello #{user_name.capitalize}! Next year you will be #{user_age + 1} 😢"