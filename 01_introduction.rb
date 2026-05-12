# First livecode - Introduction to Ruby


#### Introduction

# - Ruby was created in 1993 by a Japanese person (Matz)
# - Rails is a web framework created by DHH in 2004

# Some apps created with Rails:
# Airbnb, Kickstarter, Shopify, Github, Twitch, Twitter (in the past)


# Today we are covering TWO core programming notions:
# Data Types AND Variables


##### DATA TYPES #####

## String
# to represent text data
'sylvain' # A string
"pierre" # Also a string
'' # Also a String - empty string
' ' # Also a String - 1 charcater, a space

## Boolean
true # TrueClass (True Data Type)
false # FalseClass (False Data Type)

## Integer
# Used to represent whole numbers
3
0
-2

## Float
# Used to represent numbers with decimals
4.1
2.0
-3.5

## Array (in other languages, sometimes called List)
# Delimited by square brackets [], and separated by ,
[3, 6, -2] # An array of 3 Integers
['sylvain', 'doug', 'sasha'] # Array of 3 strings
[4, true, 'john'] # This is ok in Ruby
[] # An empty array

# In an array, we start counting from... ZERO


#### How to display things in the terminal?

## puts
# Go to the next line
puts 'sylvain'
puts 'I am 43 years old'

## print
# Doesn't go to the next line
print 'pierre'
puts 'I am 43 years old'

## p
# Exclusively used for debugging
p ['sylvain', 'doug', 'sasha']
# Is equivalent to this:
puts ['sylvain', 'doug', 'sasha'].inspect


# In Ruby, everything is an object
# We can call methods on these objects

#### .class
# .class is a method to check the class of a given object
# We can use indifferently class / data type / type of object
puts 'sylvain'.class
puts ''.class
puts 4.class
puts ['sylvain', 'doug', 'sasha'].class

puts true.class
puts 4.5.class


#### String Methods (simple)
puts 'Jie'.upcase # returns an upcased STRING
puts 'YJKAM'.downcase # returns a downcased STRING
puts 'Arlon'.reverse # returns a reeversed STRING

puts 'Arlon'.length # Returns the number of characters as an Integer

## In Ruby, we can chain methods - make sure that you call each method on the right type of object
puts 'sylvain'.length.reverse # Doesn't work
puts 'sylvain'.reverse.length

### String Methods (advanced)
puts 'sYLVAin'.capitalize
puts 'sYLVAIN pierre'.capitalize

p 'Louis'.chars
puts '7'.to_i
puts '7'.to_i.class

#### Integers (basic methods)

puts 1 + 1
puts 4 - 1
puts 5 / 2 # Returns the quotient of the euclidian division
puts 5.0 / 2
puts 5 * 2

puts 5.to_s
puts 5.even? # false
puts 5.odd? # true

# Convention: all methods that end with a '?' return true or false

###### VARIABLES #######

# Variables are boxes to store things

# age = 23

# # I am storing 23 in an age box
# # I am assigning the Integer 23 to the variable called 'age'
# # - age is the name of the variable
# # - 23 is the objet that is assigned to the variable
# # - = is the assignment operator

# # In other languages, the assignment operator has a different syntax
# # <=
# # <=>
# # ==
# # <-

# TWO conventions:
# - Variable names should be all lower case (lower_snake_case)
user_name = 'sylvain' # OK
User_Name = 'sylvain' # NOT OK
# - Please, pretty please, use EXPLICIT names for variables
user_age = 37 # GOOD
n = 37 # NOT GOOD

#### Some behaviors with variables

age = 37

puts age.class # Integer
puts age.odd? # true
puts age + 1 # 38

# We can change the type of data that is stored in a given variable
# Ruby is a dynamic language

# This is called re-assigning a variable
age = 37
puts age
age = 'thirty three'
puts age

# # Incrementation
age = age + 1
puts age

# Is exactly the same as this:
age += 1
puts age

# Concatenation
first_name = 'sylvain'
last_name = 'pierre'
puts first_name + ' ' + last_name


##### LIVECODE ######

# Write a program that asks for the user name and age, and returns a greeting, saying how old they will be next year

# Let's do some **Pseudo-Code** (writing in plain English, step by step, what we want to do)

# 1) Welcome the user OK
puts 'Welcome to our mini-program!'
puts '==========='

# 2) Ask the user for their name
puts 'What is your name?'
print '> '

# before 3) Let the user input something
# 3) store the user's answer (in a variable)
user_name = gets.chomp # Gets the user input as a String

# 4) Ask the user how old they are
puts 'How old are you?'
print '> '

# 5) Store the user answer (in a different variable)
user_age = gets.chomp.to_i # Stores the user answer as an Integer

# 6) Compute the user's age next year
age_next_year = user_age + 1

# 7) Build the final answer for our user
# puts 'Hello ' + user_name + '! Next year you will be ' + age_next_year.to_s + '. This is pretty old...'

# String Interpolation
# A way to inject **Ruby code** into strings
# IT only works with " "

puts "Hello #{user_name.capitalize}! Next year you will be #{user_age + 1}. This is pretty old..."
