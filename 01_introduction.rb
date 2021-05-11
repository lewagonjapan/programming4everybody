# First livecode - Introduction to Ruby


#============== INTRODUCTION ===========

### Why Ruby?
# Ruby was created in 1995 by Matz
# It was coined as the language optimized for developer happiness

### Ruby on Rails
#
# Rails is the most efficient framework to build web apps.
# Currently used to build famous web apps:
# Shopify, Twitter (formerly built with Rails), Airbnb, Github, Kickstarter, Twitch


#============== PART ONE: DATA TYPES ===========

### Today, we're introducing TWO core programming notions:
# Data Types
# Variables

# These notions are common to *most* programming languages.


### First concept: Data Types

## Most basic data types:

"Sylvain" # String
5 # Integer
4.5 # Float
true # True
false # False
[1, 2, 3] # Array


## Three ways to display in the terminal:

# puts (add an extra line after)
puts 'Hello Sylvain'

# print (no extra line after)
print 'Sylvain'

# p - This is used to inspect, mostly for debugging:
p [1, 2, 3] # => Will display the *actual* array


## In Ruby, everything is an object
# To check the type (also called the class) of an object, we use .class

"Sylvain".class # => String
5.class # => Intger
[].class # => Array (in that case, an empty array)

## Integers Methods

# Basic integer methods
 5 + 5 # => 10
 2 * 7 # => 14
 2 - 4 # => -2
 6 / 5 # => 1  ⚠️ gives the quotient of the euclidian division

# If we want an exact division, one element needs to be a float:
 6 / 5.0 # => 1.2

# Advanced methods for Integers:

5.odd? # => true
5.even? # => false

# ⚠️ The ? is part of the method name.
# It is a convention to specify that this method returns true or false


5.to_s # => "5" turns an Integer into a String


## String Methods

# Basic String methods:

# .length
'Sylvain'.length # => 7 (.length returns an Integer)

# .capitalize
'sylvain'.capitalize # => 'Sylvain'

# .upcase
"erwin".upcase # => 'ERWIN'

# .reverse
'sylvain'.reverse # => 'niavlys'

# ⚠️ Theh Ruby Doc is your new best friend!
# Ruby Doc for the String class: https://ruby-doc.org/core-3.0.1/String.html#method-i-2B

#Advanced String methods

# .chars
'sylvain'.chars # => ['s', 'y', 'l', 'v', 'a', 'i', 'n']


# Concatenation
# 'Sticking' strings together:
"Sylvain" + " " + "Pierre" # => "Sylvain Pierre"


#============== PART TWO: VARIABLES ===========

### Second core programming notion:
### Variables

# What is a variable?
# A box to store something

# Why do we use variable?
# To store values to be able to re-use them later

# Example:
first_name = "Sylvain"

# In that example, we are *assigning* the value 'Sylvain' to the variable name
# = is called the assignment operator
# ⚠️ Convention: in Ruby, variable names are lower_snake_case

# ⚠️⚠️ For readability, please use explicit variable names:
n = 'Sylvain' # DO NOT DO THAT 👿


# We can call all the previous methods on variables too:

first_name = "Sylvain"
puts first_name # => 'Sylvain'
puts first_name.reverse # => 'niavlyS'
puts first_name.class # => String

last_name = 'Pierre'

# Concatenation (using variables)
puts first_name + last_name # => 'SylvainPierre'

# Variables can be re-assigned
# ⚠️ Previous value is lost
first_name = 'Heinrich' # re-assigning the first_name variable

puts first_name # => 'Heinrich'


# Ruby doesn't care about data types for variables (some languages do)
age = 'twenty three' # String

puts age # => 'twenty three'

age = 23 # Re-assigning, now Integer

puts age # => 23


# Incrementation

# Incrementing the variable age by 1
age = age + 1
puts age # => 24

# short notation (syntax sugar)
age += 1
puts age # => 25


#============== LIVECODE ===========


# Code a program that will:
# - ask user for their name
# - ask user for their age
# Display a nicely arranged sentence telling them their name and age

# Bonus: Tell them their age next year!


# ask user for their name
puts 'Hello! What is your name?'
print '> '
# gets user answer with gets.chomp, and store the user answer in a variable:
first_name = gets.chomp # ⚠️ String

# Ask user for their age (e.g. '45')
puts "How old are you? (e.g. \"45\")"
print '> '
# store the user answer in a variable:
age = gets.chomp.to_i #⚠️ the .to_i method transforms the user input in an Integer

# Display a string using those two answers:

puts "Hello #{first_name.capitalize},you'll be #{age + 1} next year"

# Interpolation: #{ }
# Interpolation allows me to inject some Ruby code in a String:
"My name is #{first_name}"

# We can even call methods within the interpolation:
"My name is #{first_name.capitalize}"


#============== Q&A ===========


# 1️⃣ - what is the difference between .upcase and .upcase!


# Example 1:
puts 'What is your name?'
first_name = gets.chomp

first_name.upcase!

puts first_name # => The upcased user input

# Example 2:
puts 'What is your name?'
first_name = gets.chomp

first_name.upcase

puts first_name # => The original user input


# ! methods are called dangerous or destructive methods
# The '!' is part of the method name
# ⚠️ DO NOT USE THEM



# 2️⃣ - Can we add some restrictions to what the user inputs with gets.chomp?

# In pure Ruby, yes, but we need really long code
# In Rails, we have a ton of ways to validate user inputs



# 3️⃣ - What is the difference betwen puts and print?

# puts adds a line jump
# print does not



# 4️⃣ - What does .chomp do?

# .chomp removes trailing special characters when user inputs data (specificaly, the 'Enter' special character)



# 5️⃣ - What is the difference between [ { ( ?

# These are different syntaxes for different cases:


[] # an array

"#{}" # interpolation
{} # hashes

() # pass arguments to methods



# 6️⃣ - is '+' a method for Strings?

# Yes! It is in the Ruby Doc: https://ruby-doc.org/core-3.0.1/String.html#method-i-2B



# 7️⃣ - Can we add several values to a variable?

# To store 'multiple' values, we can use an Array:

students_names = ['Sylvain', 'Heinrich', 'Sasha']

# This variable stores 1 object: an array of 3 elements (3 Strings)






