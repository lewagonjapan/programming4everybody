# First livecode - Introduction to Ruby

# ===== INTRODUCTION =====

# At Le Wagon, we teach Ruby
# Created in 1995 (at the exact same time as JavaScript)
# Designed by a Japanese person
# Ruby was built for developer's happiness

# Ruby is very famous because of its main framework, Rails
# Rails: Airbnb, Github, Shopify, Twitch, Twitter (originally)


# Today, we are going to cover TWO core programming notions:
# Data Types and Variables


# ===== DATA TYPES ======

### Common Data Types

'Sylvain' # String
"Sylvain" # Also a String

4 # Integer
-2 # Integer

# Boolean - In Ruby, true and false each have their own type:
true #TrueClass
false # FalseClass

4.5 # float
-2.1 # float

[1 , 2, 3] # Array of 3 elements, all integers
[] # Empty Array


### Displaying in the terminal

# puts - skips a line after
puts 'Hello World!'

# # print - does not skip a line after
print 'Sylvain'

# p (only used for debugging) - Shows exactly what data type we are manipulating:
p [1, 2, 3] # => [1, 2, 3]


### In Ruby, everything is an object

# What that means: we can call methods on those objects

# Very first method: .class
# .class lets us check the type of data we are manipulating

puts 'Sylvain'.class # => String
puts [].class # => Array
puts 4.3.class # => Float


# Each data type has A TON of methods that we can call on them

### Integer methods

# Simple Integer methods

puts 4 + 4 # => 8 (addition)
puts 4 - 1 # => 3 (subtraction)
puts 5 / 2 # => 2 (euclidian division, gives the quotient)
puts 4 * 2 # => 8 (multiplication)
puts 5 % 2 # => 1 (modulo, gives the remainder of the euclidian division)


# "Advanced" Integer methods

puts 5.odd? # => true
puts 5.even? # => false
puts 5.to_s # => "5" turns an Integer into a String


### String methods

puts 'sylvain'.length  # => 7 (number of characters in a string)

puts 'sylvain'.reverse # => 'niavlys' 
puts 'ToKyO'.downcase # => 'tokyo'
puts 'TOKyo'.capitalize # => 'Tokyo'

p 'sylvain'.chars # => ['s', 'y', 'l', 'v', 'a', 'i', 'n']

puts '5'.to_i # => 5 (as an Integer)

# Ruby doc is your friend!!! 😍

# Each data type has a Ruby Doc page
# For example, for strings: 
# https://ruby-doc.org/core-3.0.2/String.html



# ==== VARIABLES ====

### What is a variable?
# A box to store something

age = 23

# the Integer 23 is assigned to the variable age
# 'age' is the name of the variable
# = is called the assignment operator
# 23 is the value that we assign to the variable


## WHY variable?
# with variable, we can store and re-use data


## Convention
# In Ruby, variables are written in lower_snake_case 🐍
first_name = 'Sylvain'
last_name = 'Pierre'

## Best practice
# Use explicit names for variables
n = 23 # This is a big NO NO 🙅‍♀️🙅‍♀️🙅‍♀️


# On variables, we can call all the methods we saw before

first_name = 'Sylvain'
last_name = 'Pierre'

puts first_name.class # => String
puts first_name.length # => 7

# Concatenation with Strings
puts first_name + ' ' + last_name # => 'Sylvain Pierre'


# Incrementation 

age = 38

puts age # => 38

age = age + 1 # Incrementing

puts age # => 39

# Shorter version of incrementation
# It is called Syntax Sugar
age += 1
puts age # => 40

# Ruby doesn't care about the type of data you store in a variable (some other languages do)

age = 'forty'
puts age



# ===== LIVECODE =====

# Write a mini program that asks user for its name and age, and returns their age next year

# Pseudo-Code
# writing in English, step by step, what we want to do

# 0 - greeting the user - OK
# 1 - ask user for their name - OK
# 2 - get the user input and store it in a variable - OK
# 3 - ask user for their age - OK
# 4 - get the user input and store it in another variable - OK
# 5 - Tell the user their age next year - OK

puts 'Welcome to our first mini-program'
puts '----------'
puts ''

puts 'What is your name?'
print '> '
user_name = gets.chomp # as a String

puts ''

puts 'How old are you?'
print '> '
user_age = gets.chomp.to_i # An Integer

puts ''

puts "Hi #{user_name.capitalize}, next year you'll be #{user_age + 1}"

## New concepts introduced in the livecode:
# 1) This notation #{} is called String interpolation. It allows us to inject Ruby code inside a String.
# 2) gets.chomp lets us get inputs from the user (as a String)


# ===== HOMEWORK =====

# Reproduce the behavior of the .capitalize method without using it

'sylvain'.capitalize # => 'Sylvain'



# ===== Q&A =====

## Q1 - What website can you use to code on your own?
# You can use REPL (replit.com)


## Q2 - what the h**l is .capitalize!

first_name = 'leigh'

puts first_name # => 'leigh'

first_name.capitalize!

puts capitalized_name # => 'Leigh'


# 1) ! is PART OF THE METHOD NAME
# 2) ! methods are called destructive or dangerous
# 3) when called on a variable, ! methods modify what is stored in the variable

# 4) ⚠️⚠️⚠️ NEVER USE ! methods ⚠️⚠️⚠️


# Q3 - what does .chomp do?
# => .chomp removes special characters from strings
