# First livecode - Introduction to Ruby


### What is Ruby?

# Ruby is a programming language built by a Japanese person called Matsumoto-san (@matz on Twitter)
# It  was made in 1995 (same year as JavaScript)

# Ruby was made very famous thanks to a web development framework, Rails
# - Rails is the most efficient framework to build web applications
# - Rails was created in 2004, by DHH
# - Famous web applications built with Rails: Twitter (in the beginning), Github, Shopify, Airbnb, Kickstarter, Twitch


# Today,we're going to be covering TWO core programming notions
# Core programming notions: a notion applicable to any programming language 
# Data Types
# Variables

# ==== Data Types ====

## String
# used to write any sort of text data
'Sylvain' # String
"Sylvain" # also a String

## Integer
4 # Integer
-2 # Integer

## Float
4.5 # Float
-2.352 # Float

## True and False (boolean)
true # TrueClass
false #FalseClass
# 'Class' and 'Data Type' can be seen as synonyms

## Array (in Python, we call them list)
# an Array is a collection of elements
[1, 2, 3] # An array of 3 Integers
['sylvain', 'sasha', 'douglas'] # An array of 3 Strings
[] # Empty array


### How to display things in the terminal?
# There are 3 ways:

# puts
puts 'Welcome to the Club!'
# puts skips a line

# print
print 'Sylvain'
# print doesn't skip a line

# p
puts [1, 2, 3].inspect
p [1, 2, 3]

# p is *only* used when we need to debug our code


# In Ruby, everything is an object
# We can call methods on those objects:

### .class
# Checks the class (data type) of an object
puts 'Sylvain'.class # => String
puts 4.class # => Integer
puts [].class # => Array


### Basic Integer Methods

## Basic operations
puts 3 + 3
puts 2 * 4
puts 6 - 1
puts 4 / 3 # This returns the QUOTIENT of the euclidian division
puts 4.0 / 3 # to get the exact result of a division, at least one side needs to be a Float


### Advanced Integer Methods

# .even? 
# Returns true if Integer is even, false if not
puts 5.even? # => false

# .odd?
puts 5.odd? # => true

# .to_s
# turns an integer into a String
puts 5.to_s # => "5"


#### String Methods

# .length
# counts the number of characters in a String
puts 'Yohana'.length # => 6
puts ''.length # => 0 - the empty string has a length of 0 character
puts ' '.length # => 1 - Space is a character, its length is 1


puts 'YOhanA'.upcase # => 'YOHANA'
puts 'YOhanA'.downcase # => 'yohana'
puts 'YOHanA'.capitalize # => 'Yohana'

# Ruby doc is your friend!
# for Integers: https://ruby-doc.org/core-3.1.0/Integer.html
# for Strings: https://ruby-doc.org/core-3.1.2/String.html

# .chars
# returns an array of all the characters in a String
'Sylvain'.chars # => ['S', 'y', 'l', 'v', 'a', 'i', 'n']

# .to_i
# Turns a String into an Integer
puts '5'.to_i # => 5 (as an Integer)


# ==== Variables ====


age = 23

# A variable is a box in which we can store an 'object'

# = is called the assignment operator (IT IS NOT THE MATHEMATICAL EQUAL SIGN)
# In other languages, the assignment operator may have a different syntax, for example:
# age <= 23
# age <> 23
# age <== 23

# Proper vocabulary:
# The Integer 23 is assigned to the variable named 'age'

# Two conventions to remember for for variables:
# 1) Always write your variables in lower_snake_case
first_name = 'sylvain'

# 2) Always use explicit names for your variables
a = 23 # This is a big NO NO


# Let's play with variables

age = 23

# Checking the class of an object stored in a variable:
puts age.class # => Integer

# Displaying the object stored in a variable:
puts age # => 23

# Basic operations with variables:
puts age + 1 # => 24

# Concatenation with variables
first_name = 'sylvain'
last_name = 'pierre'

puts first_name + ' ' + last_name # => 'sylvain pierre'

# Incrementation

age = 23
puts age

age = age + 1
puts age

# The above operation is exactly the same as:
age += 1 # Syntax Sugar (a simpler way to write something)
puts age


# Ruby doesn't care about the type of objects you store in a variable:

age = 23
puts age

# Re-assigning
age = 'Twenty Three'
puts age


# ==== LIVECODE ====

# Build a mini program that asks the user for their name and age, and build a sentence welcoming them, and telling them their age next year.

# Pseudo-code
# Writing in plain English, step by step, what we want to do:

# 1) Greet our user
# 2) Ask our user for their first name
# 3) Get the user answer, and store this answer in a variable
# 4) Ask our user for their last name
# 5) Get the user answer, and store this answer in a variable
# 6) Ask the user for their age
# 7) Get the user age, and store it in ANOTHER variable
# 8) Compute the user's age next year
# 9) Build the final welcome message

puts 'Welcome to our first mini-program!'
puts ''

puts 'What is your first name?'
first_name = gets.chomp # gets the user input as a STRING
puts ''

puts 'What is your last name?'
last_name = gets.chomp
puts ''

puts 'How old are you?'
age = gets.chomp.to_i # Gets the user input as an INTEGER
puts ''

# age_next_year = age + 1
# puts 'Welcome ' + first_name + ' ' + last_name + '!' + 'Next year you will be: ' + age_next_year.to_s
# The above is a monstrosity. You see it once and never do it again!

# Introducing: String Interpolation
# Interpolation is a way to inject Ruby code inside of a String
# Interpolation only works with ""

puts "Welcome #{first_name.capitalize} #{last_name.capitalize}! Next year you will be #{age + 1} 😭"


# ===== Q & A =====


### Q1)  When to use ' ' or " " ?
# use " " only when you have to interpolate something


### Q2) How to use quotes as an actual character?
puts 'I can\'t swim'
puts "I can't swim"

### Q3) limit to how many methods you can chain?
# Your imagination 😉

puts 53.to_s.reverse.to_i
# Remember what each method call returns.
# In the above example, .to_s returns a String, .reverse returns a String, .to_i returns an integer

### Q4) What are ! methods?
# 1) the ! is part of the name of the method
# 2) Those ! methods are called 'destructive' or 'dangerous'
# 3) Never use them

puts 'what is your name?'
first_name = gets.chomp

capitalized_first_name = first_name.capitalize!

puts ''
puts capitalized_first_name
puts first_name  # first_name has been permanently modified by the ! method