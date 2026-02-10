# First livecode - Introduction to Ruby
# Where I will write some code
#

##### INTRODUCTION #####
#
# - Ruby was created in 1993, brought to the world in 1995
# - DHH introduced Rails in 2004
# - Github was built with Rails, Shopify, Kickstarter, Airbnb, Twitch
#

### Today, we are going to cover 2 CORE programming notions:
# - Data Types
# - Variables
#
##### DATA TYPES #####

### Strings
# Used to represent text data

'Sylvain' # String
"Pierre" # Also a String
'' # Empty String
' ' # String of 1 character (Space)

### Integer
# Used to represent numbers

5
0
-3

### Float
# used to represent numbers with decimals
5.0
-3.1

### Boolean
true #TrueClass (or true data type)
false #FalseClass (or false data type)

### Array
# Delimited by [] - also called list in other languages
[1, -2, 3] # Array of 3 Integers
['sylvain', 'douglas', 'sasha'] # Array of 3 Strings
[] # Empty Array

# In the array world, we start counting from 0
# Arrays can store any type of data
[1, 'sylvain', true]


##### Displaying in the Terminal

### puts
# displays in the terminal AND goes to the next line
puts 'I am Sylvain'
puts 'I am 4X years old'
puts ''

### print
# Displays in the terminal AND doesn't skip a line
print 'I am Sylvain'
print 'I am 4X years old'
puts ''

### p
# Inspect your code
# Only used for debugging
p 'Sylvain'
p ['sylvain', 'pierre']

# Is a short syntax for:
puts ['sylvain', 'pierre'].inspect


### Ruby is an Object Oriented Programming Language

# - In Ruby, everything is an object
# - We can call methods (behaviors) on these objects

# The words Object, Data Type, Class can be used indifferently

### Calling methods on objects
### .class method
# a way to check the Data Type / Class of a given object
# You can call the .class method on ANY object
puts 'Sylvain'.class
puts ''.class
puts [].class
puts 6.7.class
puts true.class


#### String Methods

# Basic methods
puts 'sylvain'.length
puts 'pierre'.upcase
puts 'sAPtA'.capitalize
puts 'sylvain pierre'.capitalize
puts 'Hirose'.reverse
puts ''

## Advanced
# Chars "explodes" a String into an array of characters
p 'sylvain pierre'.chars
# to_i turns a String into an Integer
p '7'.to_i.class

### In Ruby, we can chain method calls
# The Number 1 Rule when chaining method?
# Make sure to call each method on the correct data type

# This works:
puts 'sylvain'.reverse.length
# This doesn't work:
puts 'sylvain'.length.reverse


### Concatenation
# Stick strings together
puts 'sylvain' + 'pierre'
puts 'sylvain' + ' ' + 'pierre'


#### Basic Integer Methods
puts 5 + 2
puts 5 - 3
puts 5 / 2 # returns the quotient of the euclidian division
puts 5.to_f / 2 # one side needs to be a float
puts 5 * 3

#### Advanced Integer methods
puts 5.to_s # turns an Integer into a String
puts 5.odd? # Is 5 odd?
puts 5.even? # Is 5 even?


#### VARIABLES #####
#
# A variable is a box to store something, so that we can re-use it later

age = 23

# We are assigning the Integer 23 to the variable named age

# - the = sign is called the assignment operator (for Ruby)
# In other languages, the operator can be written in other ways
# - <=
# - ===
# - <>
# age is the variable name
#
# Two conventions:
# - It is lower_snake_case
# - Use explicit names for variables
age = 23 # GOOD
n = 23 # NOT GOOD

### Variables behave the exact same way as everything we've seen before
first_name = 'sylvain'

# Calling methods
puts first_name.length

# Basic operations
age = 23
puts age + 1

# Incrementation
user_age = 23
puts user_age

user_age = user_age + 1
puts user_age

user_age += 1
puts user_age


# Changing the type of a variable
age = 23 # Integer
puts age

age = 'twenty three' # String
puts age

# Ruby is a dynamically typed language: we can change the data type stored in a given variable
#
#
# ###### LIVECODE ####
#
# Write a short program that asks for the user name and age - this program will then greet the user and tell them how old they will be next year.
#

# Pseudo-Code
# Writing in English, step by step, what we are trying to do

# 0 - Welcome the user to our program
puts 'Welcome to our mini-program!'
puts '=========='
puts ''

# 1 - Ask the user for their name
puts 'what is your name?'
print '> '

# 2 - get the user response AND store in a variable
user_name = gets.chomp # Stored as a String

# 3 - Ask the user how old they are
puts 'How old are you?'
print '> '
#
# 4 - Get the user answer AND store in ANOTHER variable
user_age = gets.chomp.to_i # Stored as an Integer

# # 5 - compute the user's age next year
# age_next_year = user_age + 1

#
# 6 - build the output and display it in the terminal
# puts 'Hello! Welcome ' + user_name + '! ' + 'Next year you will be: ' + age_next_year.to_s + '. This is pretty old...'
# puts ''

#### Interpolation
# Injecting **Ruby code** into Strings
# It doesn't work with '' - we have to use " "
puts "Hello! Welcome #{user_name.capitalize}! Next year you will be #{user_age + 1}. This is pretty old..."
