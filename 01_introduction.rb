# First livecode - Introduction to Ruby

# ===== INTRODUCTION =====

# - Ruby was created by a Japanese person, Matsumoto-san (Matz)
# - Ruby is a pretty "old" language (C#, Java, PHP, JavaScript)
# - It is the main language behind the RAILS web framework

# Some famous web applications were built with Rails:
# Airbnb, Kickstarter, Github, Twitter (used to be), Twitch, Shopify

# Today, we are going to cover TWO core programming notions
# 1) Data Types
# 2) Variables


# ===== DATA TYPES ======

## String
# A String basically represents some text
'Sylvain'
"Sylvain"

## Integer
# Whole numbers
1
5
-3

## Float
# Decimal numbers
5.2
0.27
-2.5

## Boolean
# In Ruby, there are two classes to represent booleans
true #TrueClass
false #FalseClass

# Data Type and Class are synonyms

## Array (in other languages, sometimes called list)
# To represent a list of elements
[] # This is the Empty Array
[4, 1, 4] # An array of 3 Integers
['sylvain', 'yann', 'sasha'] # An array of 3 strings
[false, 4, 'yann'] # An array of 3 elements

# IMPORTANT
# In an array, we start counting at index... 0


### How do we display things in the terminal?

### puts
# Goes to the next line
puts 'Sylvain'

### print
# Doesn't go to the next line after
print 'I am the CEO'

### p
# p is exclusively used for debugging
p 'Sylvain'
p ['sasha', 'chieri', 'yann']
# is a shortcut for:
puts ['sasha', 'chieri', 'yann'].inspect


# In Ruby, everything is an Object
# We can call methods on these objects (a way to manipulate these objects)

## .class
# Class checks the data type that we are manipulating
puts 'sylvain'.class # String
puts ''.class # String
puts [].class # Array
puts 5.0.class # Float

### Integer Methods
# Basic Integer Methods
puts 2 + 3 # 5
puts 5 - 1 # 4
puts 5 * 14 # 70
puts 13 / 2 # 6 - Quotient of the Euclidian division
puts 13.0 / 2 # 6.5

# Advanced Integer Methods
puts 5.even? # false
puts 5.odd? # odd
puts 5.to_s.class # String

# We can chain methods
# Ruby doc is your friend - For example, for Integers:
# https://ruby-doc.org/core-2.5.4/Integer.html


### String Methods
puts 'sylvain'.upcase # 'SYLVAIN'
puts 'sylvain'.reverse # 'niavlys'
puts 'MaRie'.downcase # 'marie'
puts 'sAnDRINe'.capitalize # 'Sandrine'

### Advanced Ruby methods
puts 'sylvain'.length # 7
p 'sylvain'.chars
puts '5'.to_i # Turns a String into... an Integer

### Concatenation
# Sticking strings together
puts 'sylvain' + ' ' + 'pierre' # 'sylvain pierre'

# How many methods can you chain?
# As many as you like!


## ==== VARIABLES =====

# a variable is a way to store some value in a box
age = 23

# # I am storing the number 23 in a box called age

# The Integer 23 is *assigned to* the variable called 'age'
# 1) '=' is the assignment operator
# 2) In some other languages, the assignment operator has a different syntax:
# <=
# <=>
# ==
# <->

# Two Conventions for variables:
# 1) variables are written in lower_snake_case
# 2) please, pleeeease use explicit names for your variables
n = 23 #  BIG NO NO
user_age = 23 # YES


# What can we do with variables?

age = 23

## Call methods
puts age.class # Integer

## Re-assigning
age = 'twenty three'
# In Ruby, we can change the type of what is stored in a variable

## Concatenation
first_name = 'sylvain'
last_name = 'pierre'
puts first_name + last_name

### Incrementation (exclusive to variables storing Integers)
age = 23
puts age

age += 3 # Syntax shortcut
puts age

# This is the actual syntax
age = age + 1
puts age


# === LIVECODE ====

# Write a program that asks the user for their name and age, and tell them how old they will be next year

# Let's write some PSEUDO CODE:
# 0) Greet our user! OK
puts 'Welcome to our first program!'
puts '========='
puts ''
# 1) ask the user for their name OK
puts 'What is your name?'
# 2) Store the user answer (in a variable) OK
user_name = gets.chomp # Stores the user input as a STRING
# 3) ask the user how old they are OK
puts 'How old are you?'
# 4) store the user answer OK
user_age = gets.chomp.to_i # Stores the user input as a STRING
# 5) compute the age next year
age_next_year = user_age + 1
# 6) "build" the final sentence
puts ''

puts 'Hello ' + user_name + '! ' + 'Next year, you will be... ' + age_next_year.to_s

# Let's refactor this with Interpolation
# Interpolation is a way to inject RUBY CODE inside a String:
puts "Hello #{user_name.capitalize}! Next year, you will be #{user_age + 1}"


### ====== Q&A ======


### Q1) Why not always use " " rather than ' '

# Mostly, for readability


### Q2) About destructive methods


name = 'sylvain'
puts name.capitalize # non-destructive
puts name # original variable has NOT been modified
puts ''

puts name.capitalize! # Destructive method
puts name # original variable has been modified
