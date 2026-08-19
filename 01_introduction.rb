# First livecode - Introduction to Ruby


### What is Ruby
# - Ruby is a programming language
# - created by Matsumoto-san
# - Created in 1993

### Ruby got popular thanks to Rails:
# Rails is a web framework - Rails was created by DHH
# Some applications built with Rails?
# - Kickstarter, Airbnb, Shopify, Twitch, Twitter ()

### Tonight, we are going to discover TWO core programming notions

## Variables AND Data Types

#### DATA TYPES ####

### String
# Is used to represent text data
'sylvain' # String
"Pierre" # also a String
'' # Also a String - Empty String
' ' # Also a String - space character

### Integer
# used to represent round numbers
5
0
-2

### Float
# used to represent non-round numbers
5.2
-1.2853
0.21

### True Class (True Data Type)
true

### False Class (False Data Type)
false

### Array
# delimited by [] - used to represent a list of elements
# In some languages, Arrays are called list
[1, -2, 5] # array of 3 Integers
['sylvain', 'sasha'] # array of 2 Strings
[false, 0, 'sylvain', 8.0] # array of 4 elements
[] # Also an array - empty array

# In an array, we start counting from... 0
['sylvain', 'sasha', 'douglas']
#     0         1         2


#### How do we print things in Ruby??? ####

### puts
# puts goes to the next line
puts 'nelodev'

### print
# doesn't go to the next line
print 'sylvain'
puts 'pierre'

### p
# exclusively used for debugging
# lets us 'inspect' an object / element
puts ['sylvain', 'sasha']

p ['sylvain', 'sasha']
puts ['sylvain', 'sasha'].inspect


### In Ruby, everything is an object
# We can call methods on these objects
# we use the .method

### .class
# a method that lets you check the class / data type of a given object
puts 'Emily'.class
puts ''.class
puts 5.class
puts [5, 4, 3].class
puts ''
puts [].class
puts true.class
puts false.class


#### String Methods #####

## Simple Methods
puts 'SyLvain'.upcase # Returns a String
puts 'NeLodeV'.downcase # Returns a String
puts 'jULiA'.capitalize
puts 'sylvain pierre'.capitalize
puts 'lance'.length # Returns an Integer

# # Advanced Methods
puts '5'.to_i # turns a String into an Integer
p 'sylvain'.chars # Splits a String into an array of characters


#### Integer Methods

## Simple methods
puts 5 + 2
puts 5 - 2
puts 5 * 2
puts 5 / 2 # Returns the quotient of the euclidian division
puts 5.0 / 2

## Advanced methods
puts 5.odd? # ? methods always return true or false
puts 5.even?
puts 5.to_s # Turns integer into a String
puts 5.to_s.class

# In Ruby, we can chain methods
# Make sure that you call the right methods on the right objects
puts 5.to_s.class
puts 'sylvain'.length.upcase # NO NO


# Concatenation
puts 'sylvain' + ' ' + 'pierre'


##### VARIABLES #####

age = 23

## Official wording:
# Assigning the Integer 23 to the variable called age

## Casual wording:
# I am storing the number 23 in the age box

# Vocabulary:
# '=' is actually called the assignment operator
# In some other languages, the assignment operator is written:
# <
# <=>
# <==
# <>

## Two conventions:
# 1) variable names should be lower_snake_case
first_name = 'sylvain'
# 2) please use explicit names for your variables
user_age = 23 # YES
n = 23 # BIG NO

### Everything we've seen so far works with variables

age = 23
puts age.odd?
puts age + 1

### Re-assign variables
# Storing Integer
age = 23
# re-assigning and changing the type
age = 'twenty three'

### Incrementation
user_age = 42

user_age = user_age + 1
user_age += 1

##### LIVECODE ######


# Let's write a short program that greets the user, asks for their name and age, and tell them how old they will be next year

# Pseudo-code: write things step by step in PLAIN ENGLISH

# 1) Greet the user - OK
puts 'Welcome to our first mini program!'
puts '============'
puts ''
# 2) Ask the user for their name
puts 'What is your name?'
print '> '
# 3) let the user answer and STORE that answer (in a variable)
user_name = gets.chomp
# 4) Ask how old they are
puts 'How old are you?'
print '> '
# 5) let the user answer and STORE that answer (in a DIFFERENT variable)
user_age = gets.chomp.to_i # Stores the answer as a INTEGER

# 6) Compute the age next year
age_next_year = user_age + 1

# 7) Return the final answer
puts 'Welcome ' + user_name + '! Next year you will be: ' + age_next_year.to_s + '. This is pretty old...'
puts ''
# Interpolation
# A way to inject **Ruby code** directly into a String
puts "Welcome #{user_name.capitalize}! Next year you will be: #{user_age + 1}. That is pretty old..."
