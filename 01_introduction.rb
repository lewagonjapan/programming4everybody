# First livecode - Introduction to Ruby


# ===== INTRODUCTION =====

# Ruby was created in 1995 by a Japanese, Matz
# Ruby was made for developer happiness

# Ruby  got popular thanks to its most famous framework: Rails
# Some very famous apps built with Rails: Shopify, Airbnb, Github, Twitter (used to), Twitch
# Rails is today the most efficient to build web applications


# Today, we will see two core programming notions:
# DATA TYPES and VARIABLES


# ===== DATA TYPES =====

### Basic Built-in Data Types

"Sylvain" # String
'Pierre' # String

8 # Integer
-5 # Integer

6.5 # Float

true # true type
false # false type

[] # Empty Array
[1, 2, 3] # Array of 3 integers


### Displaying in the terminal

# puts - Skips a line
puts 'Sylvain'

# print - doesn't skip a line
print 'Pierre'

# p - usually for debugging
p [1, 2, 3] # => will display the array explicitly: [1, 2, 3]
# p is a shortcut for:
puts [1, 2, 3].inspect


# In Ruby, everything is an object
# We can call methods on those objects

### First method: .class

puts 'Sylvain'.class # => String
puts 8.class # => Integer
puts [].class # => Array
puts true.class # => TrueClass
puts false.class # => FalseClass


### Simple Integer methods 

puts 8 + 8 # 16
puts 5 - 6 # -1
puts 8 * 2 # 16
puts 8 / 3 # 2 - Returns the quotient of the euclidian division
puts 8.0 / 3 # returns the exact result

### Advanced Integer Methods

puts 5.even? # => false
puts 5.odd? # => true
puts 5.to_s # turns an integer into a String


### Simple String methods

puts 'sylvain'.length # Number of characters: 7
puts ' '.length # => 1
puts ''.length # => 0

puts 'olga'.reverse # => 'aglo'
puts 'olga'.upcase # => 'OLGA'
puts 'OlGa'.downcase # => 'olga'
puts 'OLga'.capitalize # => 'Olga' (very convenient to format names)

puts '5'.to_i # => turns a String into an Integer


# ===== VARIABLES =====

age = 23

# non-technical way to explain it: putting 23 in a box with 'age' written on it

### Important Vocabulary and conventions:

# The Integer 23 is *assigned to* the variable 'age'
# = is called the *assignment operator*
# variables are ALWAYS written using lower_snake_case
# please use explicit naming for your variable
n = 'Sylvain' # NOT OK
name = 'Sylvain' # OK


### A variable lets us store data (an object), and re-use it later:

age = 23

# Displaying what is stored in a variable
puts age

# Basic operations with variables
puts age + 1

# Calling method on a variable
puts age.class

# re-assigning variables
age = 'Thirty four'
puts age # => 'Thirty four'

# Ruby doesn't care about the data type you store in variables

### Incrementation
my_age = 39
puts my_age # => 39

my_age = my_age + 1 # Incrementing the variable age by 1
puts my_age # => 40

# Which can also be done using this syntax:
my_age += 1 # (it is called Syntax Sugar)
puts my_age # => 41


### Concatenation
first_name = 'Sylvain'
last_name = 'Pierre'

puts first_name + ' ' + last_name



# ===== LIVECODE =====

# Write a program that asks their name and age to the user, and returns a nicely formatted sentence to greet the user (and tell them how old they will be next year)

# Pseudo-coding: writing in English, step by step, your program

# 0) Greet the user
puts 'Hello! Welcome to our first mini-program'
puts ''
# 1) Asking user what their name is
puts 'What is your name?'
print '> '
# 2) get the user input and store it
user_name = gets.chomp # Gets user input AS A STRING
# 3) Asking user how old they are
puts 'How old are you?'
print '> '
# 4) get the user input and store it
user_age = gets.chomp.to_i # cast user input into an Integer
# 5) Build a sentence computing the user's age next year

puts "Hello #{user_name.capitalize}! Next year, you'll be #{user_age + 1}!"

# This syntax #{}  is called string interpolation
# It allows us to inject Ruby code inside a String
# It only works with double quotes



