# First livecode - Introduction to Ruby

#  ====== General Intro about Ruby ==========


# Ruby was created in 1995
# Exact same creation year as JavaScript

# Rails, a web framework for Ruby, made Ruby popular
# Created in 2004, by DHH
# Rails is the most efficient framework to build web applications
# Some web apps built with Rails: Airbnb, Github, Shopify, Twitch, Twitter (not anymore)


### Today, we're introducing 2 core programming notions
# - Data Types
# - Variables


# ===== DATA TYPES ======

### String
# To write 'text'
"Sylvain" # Double quotes
'Sylvain' # Single quote

### Integer (whole numbers)
5
2
-3

### Float (numbers with decimal)
3.2
-2.1
5.0

### Booleans
true 
false

### Array
# A collection of elements
# In some other languages, arrays are called lists
[] # Empty Array
['Soufiane', 'Sasha', 'Sylvain'] # An array of 3 Strings
[1, 3, 4, 5] # Array of 4 Integers
['sylvain', 1, true, 6.0] # Not really common
[[1, 2], [3, 4]] # Array of 2 arrays


### How to display things in the terminal? 🤨

# Three ways

# puts - skips a line
puts 'Hello folks!'

# print - doesn't skip a line
print 'My name is Sylvain'
puts 'I am.... old'

# p - only used to debug
# Allows to inspect code
p ['sasha', 'soufiane', 'sylvain']


### In Ruby, everything is an object
# To manipulate those objects, we can call methods on them

# For example, .class
# .class lets me check the type of object I am manipulating
puts 'Sylvain'.class # => String
puts ''.class # String
puts [].class # Array


#### Integers Methods ####

# Basic methods
puts 5 + 5 # => 10
puts 5 - 2 # => 3
puts 5 * 2 # => 10
puts 5 / 2 # CAREFUL: result is the quotient of the euclidian division: 2

puts 5.0 / 2 # # => 2.5


# More advanced integer methods
puts 5.even? # => false
puts 5.odd? # => true
puts 5.to_s.class # turns an Integer into a String
puts 5.class

##### String Methods #####

### Basic String methods

# .length returns an integer, the number of characters
puts 'Joyce'.length # => 5
puts ''.length # => 0
puts ' '.length # => 1

puts 'Joyce'.reverse # => 'ecyoJ'

puts 'DaNIeL'.capitalize # => 'Daniel'
puts 'DaNIeL'.upcase # => 'DANIEL'
puts 'DaNIeL'.downcase # => 'daniel'

# More advanced String methods
'5'.to_i # => turns a string into an Integer
'Daniel'.chars # => ['D', 'a', 'n', 'i', 'e', 'l'] 'split' the string into an array of each character

# + method for strings
puts 'Sylvain' + 'Pierre' # => 'SylvainPierre'
# This is called concatenation

puts 'Sylvain' + 5 # => This doesn't work!!


# Ruby doc is your friend!!
# For string: https://ruby-doc.org/core-3.1.0/String.html
# For Integers: https://ruby-doc.org/core-3.1.0/Integer.html


# ===== VARIABLES ======

age = 23

# Storing the integer in a 'box' called age

# = is called the assignment operator
# The integer 23 is assigned to the variable age

# Why use variables?
# We can store objects and re-use them later

#### TWO Conventions
# 1) variables are lower_snake_case
first_name = 'sylvain'

# 2) Please PLEASE use explicit variable names
a = 23 # BIG NO
first_name = 'Sylvain' # => Good


## Advanced Variable Concepts

# We can call methods on variables
age = 25
p age.class # => Integer
p age.to_s # => '25'

puts age + 1 # => 26

first_name = 'Sylvain'
puts first_name + ' is the best teacher'
puts first_name.length # => 7

### Incrementing a variable
age = 25
puts age

age = age + 1
puts age # => 26

# This operation is so common that we have a shortcut for it
# (Also called Sytnax Sugar)
age += 1
puts age # => 27


# Ruby doesn't care about the type of data (object) you store in a variable

age = 23
# We can re-assign age with a String
age = 'twenty three'


# ===== Livecode ======

# Ask a user for their first, last name and age, and greet them nicely by telling them how old they'll be next year

# Pseudo-code (step by step, in ENGLISH)
# 0 - Greet the user! OK
# 1 - Ask user for their first name OK
# 2 - Store the user answer OK
# 3 - Ask user for their last name OK
# 4 - Store the user answer OK
# 5 - Ask user for their age OK
# 6 - Store the user answer OK
# 7 - Compute age next year
# 8 - Build the final sentence with age next year


puts 'Welcome to our first livecode!'
puts ''

puts 'What is your first name?'
first_name = gets.chomp # Stores user input AS A STRING

puts 'What is your last name?'
last_name = gets.chomp

puts 'How old are you?'
age = gets.chomp.to_i # Storing user age as an Integer

age_next_year = age + 1

# puts 'Hello! ' + first_name + ' ' + last_name + ' Next year you will be: ' + age_next_year.to_s

# Interpolation
# Inject *ruby code* into a String
# Syntax is: #{}
# Interpolation ONLY WORKS WITH DOUBLE QUOTES
puts "Hello #{first_name.capitalize}! Next year, you will be #{age + 1}"



# ======= Q&A =======

# Q1
puts 'sylvain pierre'.capitalize # => 'Sylvain pierre'

# Q2: Why is chars powerful? 
# Let's show with an example:

# Given this String
'sylvain pierre'

# Problem: At what position is the space?
# Using chars, we can easily split the String and find the position
'sylvain pierre'.chars

# Q3: what the hell is that ! after method names

# ? methods
# ? is part of the method name
# methods that will return true or false

# ! methods are called destructive or *dangerous* methods
# They change the content of the variable on which they are called
# DON'T USE THEM

first_name = 'sylvain'

first_name.capitalize!

puts first_name


