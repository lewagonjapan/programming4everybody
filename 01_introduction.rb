# First livecode - Introduction to Ruby

# ===== INTRO =====

# We are going to be teaching Ruby

# Ruby was created in 1995 (Python is a tiny bit older, JavaScript is the same age)
# Ruby was built by a Japanese person - Matz
# It reads almost like English
# Rails is a web framework, which was created in 2004, by DHH
# Some companies that are using Rails: Airbnb, Stripe, Shopify, Twitter (when it first launched), Kickstarter, Twitch

# Rails is the quickest way to build Web Applications


# Today, we are covering TWO core programming notions:
# Data Types & Variables

# ==== DATA TYPES =====

# String
'Sylvain' # String
"Sasha" # also a String
# Used to write 'text'

# Integer
5 
-2
0

# Float
5.3
-2.1

# TrueClass (Class is a synonym of Data Type)
true

# FalseClass
false

# Array (called list, for example in Python)
# an array is a list of elements
[2, 1, 5] # an array of 3 integers
['sylvain', 'sasha'] # an array of 2 strings
[] # The empty array

# === Displaying in the terminak ====

### puts
# skips a line
puts 'sylvain is nice'

### print
# doesn't skip a line
print 'sasha is also nice'

### p
# p is ONLY used to debug code
p [2, 3, 1]
# p is a shortcut for:
puts [2, 3, 1].inspect


### In Ruby, everything is an Object
# We can call methods on these objects!

### first method: .class
# .class is a method that we can call on ANY object, which 'tells' what type of object it is

puts 'sylvain'.class # => String
puts [1, 2, 3].class # => Array
puts [].class # => Array
puts 5.class # => Integer

# ==== Some Methods ====

### Basic Integer methods
puts 5 + 2
puts 5 - 2
puts 5 * 2
puts 5 / 2 # Careful, dividing two integers gives you the quotient of the euclidian division
puts 5.0 / 2

### Advanced integer methods
puts 5.even? # => false
puts 5.odd? # => true
p 5.to_s # => '5'
puts 5.to_s.class # => String (methods can be chained)


###  BasicString methods

puts 'Sylvain'.upcase # => 'SYLVAIN'
puts 'SYLvaiN'.downcase # => 'sylvain'
puts 'kyOTo'.capitalize # => 'Kyoto'
puts 'tokyo'.reverse # => 'oykot'

### Advanced string methods

###  chars
p 'sylvain'.chars # => ['s', 'y', 'l', 'v', 'a', 'i', 'n']

# ##to_i
puts '5'.to_i # turning a string into an integer

# + (concatenation)
puts 'sylvain' + ' ' + 'pierre' # => 'sylvain pierre'


# ===== VARIABLES =====

# Second core programming notion for tonight!

# age = 23
# Plain english version:
# I am storing 23 in a box called 'age'

# Slightly more advanced version:
# The integer 23 is assigned to the variable 'age'

## Some vocabulary:
# 'age' is the variable name
# = is called the assignment operator
# In other languages, the assignment operator might have a different syntax - for example:
# <> 
# <= 
# <=> 

# Conventions (Rules)
# 1) use lower_snake_case for variable names (This is a Ruby convention)
# 2) Use explicit names for your variables (in line with a clean code approach):
# i = 23 # BIG NO NO 
# first_name = 'sylvain' # OK

### Advanced concepts using variables
first_name = 'sylvain'

### We can call methods on variables:
puts first_name.class

### Reassigning variables

age = 23
puts age # => 23

age = age + 1
puts age # => 24

# This operation is very common in programming
# It is called 'incrementation'
# Ruby has a shortcut for it (also called syntax sugar):
age += 1

### Ruby doesn't care about the type of objects you store in a variable
age = 23
puts age

age = 'twenty three'
puts age


# ===== LIVECODE =====

# Exercise: ask user for their name and age, build a sentence to tell them their age next year

### Pseudo-code: writing in plain English, step by step, what we want to do

# 0) Greet our user OK
puts 'Welcome to our very first mini-program!'
puts '======'
# 1) Ask the user for their name
puts 'What is your name?'
print '> '
# 2) get the user input
# 3) store that input into a variable
first_name = gets.chomp # Stores the user input AS A STRING
# 4) Ask user for their age
puts 'How old are you?'
print '> '
# 5) get the user input
# 6) store it in another variable
age = gets.chomp.to_i
# 7) compute the age next year
age_next_year = age + 1
# 8) build our final sentence
# puts 'Hello! ' + first_name + ' ' + 'Next year, you will be ' + age_next_year.to_s

# Let's use String interpolation to fix that horrible code
# Interpolation allows us to *inject* Ruby code into a String, using #{}
# It only works with double quotes

puts "Hello #{first_name.capitalize}! Next year you will be #{age + 1} 😮"


# Conclusion

# Two major programming notions, data types and variables

# ====== Q&A ======

# Q1 - what the h**l is that ! at the end of method names?

# Storing the kostas string in a variable
puts 'what is your name?'
first_name = gets.chomp

# calling upcase on this variable
first_name.upcase!

# displaying
puts first_name

# - These ! methods are called destructive OR dangerous
# - They modify the object they are called on
# - DO NOT USE THEM (...unless you know what you're doing)