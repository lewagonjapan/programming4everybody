# First livecode - Introduction to Ruby


# ==== But first, let's talk about Ruby! ====

# Ruby was created in 1995
# It was designed by a Japanese person named Matsumoto san
# Twitter: @Matz

# Ruby is popular mainly thanks to Rails
# Rails is a web framework
# Designed in 2004 by DHH

# Rails was used to build Twitter (originally)
# Apps still running with RAils: Github, Kickstarter, Airbnb, Shopify
# Twitch was also built with Rails!


# Today, we're going to learn TWO core programming notions:
# Data Types & Variables


# ===== DATA TYPES =====

### Some built-in data types

'Sylvain' # This is a String
"Pierre" # This is also a String

1 # Integer
true # TrueClass
false # FalseClass
4.3 # Float
-2.1 # Also a float

[1, 2, 3] # Array of 3 integers
[] # This is also an array - The Empty Array


### How to display in the console (also called terminal)

# Displaying with skipping a line
puts 'Sylvain'

#Displaying and does not skip a line
print 'Sylvain'

# Inspects the object
p [1, 2, 3]

# Which is a shortcut for:
puts [1, 2, 3].inspect # => [1, 2, 3]


### What can we do with those objects?

# .class lets us check the type of object we're manipualting
puts 'Sylvain'.class # => String
puts 1.class # => Integer
puts [].class # => Array
puts true.class # => TrueClass
puts false.class # => FalseClass


### Integers Methods

# Simple Integer Methods
puts 1 + 1 # => 2
puts 2 - 1 # => 1
puts 4 * 2 # => 8
puts 4 / 3 # 1 (Quotient of the Euclidian division)

# More advanced methods for integers
puts 2.even? # => true
puts 3.odd? # => true
puts 2.odd? # => false

puts 3.to_s.class # => String
p 3.to_s # => '3'

# To check all methods available for a given object:
# Ruby Doc is your friend !!
# For example, for integers: https://ruby-doc.org/core-2.5.0/Integer.html


#### Strings Methods

# Basic methods for Strings

puts 'Sylvain'.length # => 7
puts ' '.length # => 1

puts 'Sylvain'.reverse # => 'niavlyS'
puts 'Sylvain'.upcase # => 'SYLVAIN'
puts 'SASHA'.downcase # => 'sasha'

puts 'tOkyO'.capitalize # => 'Tokyo

# Again, ruby doc is your friend!!
# For Strings: https://ruby-doc.org/core-3.1.0/String.html

# Some Advanced String methods

p 'Sasha'.chars # => ['S', 'a', 's', 'h', 'a']
puts '3'.to_i # turns a String into.... an Integer!


# Concatenation
# Allows to 'stick' strings together

puts 'Sasha' + ' ' + 'Kaverina' # => 'Sasha Kaverina'


# ==== VARIABLES =====

age = 23

# the value 23 is assigned to the variable age
# = is called the assignment operator
# 'age' is the name of my variable
# A variable is a box in which we can store something

# Convention
# Variables are written in lower_snake_case
first_name = 'Sylvain'

# Best practice
# Please, pleeeeease write explicit names for your variables
n = 23 # BIG NO NO
f_n = 'sylvain' # ALSO A BIG NO NO


# What's the point of variables?

# Allows to re-use the data stored

first_name = 'Sylvain'
last_name = 'Pierre'

puts first_name # => 'Sylvain'
puts last_name # => 'Pierre'

puts first_name.class # => String

puts first_name + ' ' + last_name # => 'Sylvain Pierre'

# Incrementation

age = 23
puts age # => 23

age = age + 1 # This is called incrementing the 'age' variable
puts age # => 24

age += 1 # This is another syntax (more common) to increment
puts age # => 25

# Re-assigning a different type of object

age = 'Twenty three'
puts age # => 'Twenty three'

# Re-assigning the variable
age = 23
puts age # => 23

# Ruby doesn't care about the type of data you store in a variable


# ==== LIVECODE =====

### Ask their name and age to the user, and tell them how old they will be next year!

# First step: write pseudo-code!
# pseudo-code is writing in English, step by step, what we need to do

# 0 - greet the user! - OK
# 1 - ask the user for their first name - OK
# 2 - store the user answer (in a variable) - OK
# 3 - Ask the user for their age - OK
# 4 - Store the user answer in another variable - OK
# 5 - Build the final reply

puts 'Hello, welcome to our first Livecode!'
puts '---------'

puts 'What is your first name?'
print '> '
first_name = gets.chomp # waiting for the user to input something

puts ''
puts 'How old are you?'
print '> '
user_age = gets.chomp.to_i # Casting the user input as an Integer


# Interpolation lets us inject RUBY CODE into strings

puts "Hello #{first_name.capitalize}, next year you will be #{user_age + 1}"

# Interpolation is written using #{}
# Interpolation only works with DOUBLE QUOTES


# ==== Q&A =====

# Q1 - Difference between puts and print

# puts skips a line after
# print doesn't skip a line

print 'Sylvain'
puts 'Pierre'


# Q2 - what is the difference between '' and ""

# These two are exactly the same:
puts 'sylvain'
puts "sylvain"

# The big difference is, we cannot use interpolation with ''
'My name is #{first_name}' # => doesn't work

# Convention
# If no interpolation, use single quotes
# If interpolation, use double quotes


# Q3 - what is the difference between .capitalize and .capitalize!

first_name = 'soyun'

puts first_name

first_name.capitalize!

puts first_name

# methods with ! are called destructive or dangerous methods.
# They modify the variable on which they are called.

# In short, don't use ! methods (unless you know what you're doing)