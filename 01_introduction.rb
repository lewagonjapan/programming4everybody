# First livecode - Introduction to Ruby


### Introduction

# - Ruby, was created in 1993 by Matz (older than Java, PHP, JavaScript)
# - Ruby got even more popular when Rails (Web Framework) created in 2003, by DHH, was introduced. Some popular apps created with Rails:
# Github, Airbnb, Kickstarter, Twitter, Twitch

# Tonight we are covering **TWO** core programming notions: Data Types and Variables

##### DATA TYPES #####

### String - is a way to represent text
# delimited by ' or "
'sylvain' # String
"Pierre" # Also a String
'' # Empty string
' ' # Also a String

### Integer - A way to represent a whole number
5
2
-1
0

### Float - a way to re-represent non-whole numbers
5.2
-2.3
2.0

### Boolean

## TrueClass -
true

## FalseClass -
false

# the words Data Type / Object / Class can be used indifferently

### Arrays - in some other languages, they are called list
## Delimited by [], and it is a collection of elements

[1, 2, 3] # is an array of 3 Integers
['sylvain', 'pierre'] # an array of 2 Strings
[] # The empty array
[1, 'sylvain', true] # Ok in Ruby


### Displaying things in the terminal - THREE ways

## puts
# Going to the next line
puts 'sylvain'

## print
# Not going to the next line
print 'pierre'


## p
# A way to 'inspect' an element
# VERY convenient when you need to troubleshoot
p ['sylvain', 'pierre'] # Same as:
puts ['sylvain', 'pierre'].inspect



### In Ruby, everything is an Object - You can call methods on objects

### .class
# is a method to check the data type of a given object
puts 'sylvain'.class # String
puts 0.class # Integer
puts [].class # Empty Array
puts 5.0.class # Float


### Some simple String methods

# .upcase / .downcase / .capitalize / .reverse / .length
puts 'sylvain'.upcase # returns a String
puts 'ReBeCCa'.downcase # Returns a String
puts 'reBeCCa'.capitalize
puts 'reBeCCa patERson'.capitalize
puts 'karu'.reverse
puts 'sylvain'.length # returns an Integer

# Ruby doc is your best friend!

# In Ruby, we can chain methods - For example:
puts 'sylvain'.reverse.upcase # => 'NIAVLYS'
# One rule: make sure that you can call the method on that specific data type


### Some simple Integer methods

# basic operations
puts 5 + 5 # addition
puts 5 - 2
puts 5 / 2 # returns the quotient of the euclidian division
puts 5.0 / 2 # => 2.5
puts 5 * 2

# advanced Integer methods
puts 2.even?
puts 2.odd?
puts 2.to_s

#### VARIABLES ####

age = 23

# Variable called age, storing the number 23 in that variable
# A variable is basically a BOX to store some data

# We are assigning the Integer 23 to the variable called 'age'
# - a variable is all lower case (lower_snake_case) CONVENTION
# - = sign is called the assignment operator:
# In some other languages, the assignment operator is written differently:
# age <= 23
# age <=> 23
# age << 23

# TWO conventions:
# - Variables are written in lower_snake_case
# - Make sure to use EXPLICIT names for your variables
# user_age to store user's age
# first_name to store a first
# n to store a number +> BIG NO NO

user_age = 23

puts user_age.class
puts user_age.odd?

# basic operations
puts user_age + 1

# # Re-assigning a variable
puts user_age # => 24
user_age = 'twenty three'
puts user_age # => 'twenty three'

### Incrementation
age = 32

# adding one, and storing the result back in the same variable
age = age + 1
puts age # => 33

age += 1 # exact same thing as above
puts age # => 34


###### LIVECODE ######

# Asks the name of the user as well as their age, and returns a greeting, telling them how old they will be next year

### PSEUDO-CODE
# writing in plain English, step by step, what we would like to do

# 1 - Greet the user to our mini-program OK
puts 'Welcome to our first mini program!!!'
puts ''
# 2 - Asking the user for their name OK
puts 'What is your name?'
print '> '
# 3 - Store the answer (in a variable) OK
user_name = gets.chomp # Gets the user input as a STRING

# 4 - Asking the user how old they are OK
puts 'How old are you?'
print '> '
# 5 - store the answer in another variable OK
user_age = gets.chomp.to_i

# 6 - Compute their age next year
# age_next_year = user_age + 1

# 7 - building the final sentence
puts ''
# puts 'Welcome ' + user_name + '! Next year, you will be ' + age_next_year.to_s + '. That is very old...'

# Better way of writing that last sentence, using Interpolation
# Interpolation is a way to INJECT **Ruby code** directly into a String
# Interpolation only works with " "
puts "Welcome #{user_name.capitalize}! Next year you will be #{user_age + 1}! That is pretty old... "
