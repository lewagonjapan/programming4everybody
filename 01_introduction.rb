# First livecode - Introduction to Ruby


# ===== RUBY INTRO ======


# Matsumoto-san created ruby in 1995
# Around the same time as JavaScript and Python

# Rails is the famous Web Ruby framework, it was created in 2004 by DHH
# Rails Web Applications?


# Today, we are going to cover TWO core programming notions
# A notion that you can apply to any programming language

# Data Types & Variables

# ====== DATA TYPES =====

### String
'This is a String' # String
"This is also a String" # String
# Strings are used to represent text
'' # This is also a String

### Integer
# Whole numbers
5
-2
0

### Float
5.2
-2.1
0.1234

### Booleans
true #TrueClass (Class is another way to say Data Type)
false #FalseClass

### Arrays
# Represent a list of elements
# In Python for example, we call them Lists

[1, 2, 3] # Array of 3 Integers
['sylvain', 'sasha', 'soufiane'] # array of 3 Strings

# Typically, arrays are list of the same type of elements
[1, 'sylvain', true]
[] # This is also an array! Empty array


### How to display things in the terminal?
# THREE ways to do that

### puts
# skips a line
puts 'Sylvain is the best teacher'

### print
# doesn't skip a line
print 'Sasha is the best community lead'
puts ' - She is also a great event manager'

# p (p is actually a shortcut)
# p is *exclusively* used to debug your code
p ['sylvain', 'sasha', 'soufiane']
# does the same thing as:
puts ['sylvain', 'sasha', 'soufiane'].inspect



# In Ruby, everything is an Object
# We can call methods on these Objects


### .class
# .class lets me check the Class of an object (the data type)
puts 'Sylvain'.class # => String
puts ''.class # => String
puts [].class # => Array
puts true.class # => TrueClass
puts false.class # => FalseClass

# .class method can be called on ANY object


### Basic Integer Methods
puts 5 + 2
puts 5 * 3
puts 5 - 2
puts 5 / 2 # quotient of the euclidian division
puts 5 / 2.0 # one element needs to be a Float to get the exact result
puts 5 % 2 # gives you the rest of the euclidian division

### Advanced Integer Methods
puts 5.even? # False
puts 5.odd? # True

p 5.to_s # to_s turns an Integer into a String
puts 5.to_s.class
# We can actually chain methods!
# You only need to make sure you call the right methods on the right type of objects


### Basic String Methods
puts 'stephane'.upcase
puts 'SYLVAIN'.downcase
puts 'FEliX'.capitalize
puts 'sylvain pierre'.capitalize

puts 'sylvain'.reverse
puts 'sylvain'.length
puts ''.length
puts ' '.length.odd?

### Advanced String Methods
puts '5'.to_i # turns a String into an Integer
p 'sylvain'.chars

puts 'sylvain' + 'pierre'
# This is called concatenation


# ===== VARIABLES =====

age = 23

# Storing the value 23 in a box that I called age
# We are assigning the Integer 23 to the variable *age*

# = is called the assignment operator
# In other languages, the assignment operator is written differently:
# <= 
# <=> 
# := 

# age is the name of the variable
# 1) variables are written in lower_snake_case
first_name = 'sylvain'
# 2) Pleease pretty please choose explicit names for your variables:
n = 23 # This is a BIG NO NO
user_age = 23

# Why variables?
# variables are a way to store data to be able to reuse it later


#### Some advanced concepts using variables

### Re-assigning
age = 23
puts age

age = 'twenty three'
puts age

# Ruby doesn't care about the type of data that is stored

### Incrementation
age = 23
puts age

age = age + 1
puts age

### Shortcut for incrementation (also called Syntax Sugar)
age += 1
puts age



# ==== LIVECODE =====

# Ask our user for their name and age, greet them and tell them how old they will be next year

# Pseudo-code
# 0) Greet the user! OK
# 1) Ask user for their name OK
# 2) Store the user input in a variable OK
# 3) Ask user for their age OK
# 4) Store the user input in ANOTHER variable OK
# 5) Calculate the user age next year
# 6) Greet the user with our final sentence

puts 'Welcome to our very first livecode!'
puts ''
puts 'What is your name?'
user_name = gets.chomp # stores user input as a String
puts ''
puts 'How old are you?'
user_age = gets.chomp.to_i # stores user input as a String

# computing age next year
age_next_year = user_age + 1

# Build the final sentence
# puts 'Hello! ' + user_name + '. Next year you will be: ' + age_next_year.to_s

# Interpolation will let me inject *Ruby Code* inside of Strings
# Interpolation only works with " "

puts "Hello #{user_name.capitalize}! Next year you will be: #{user_age + 1} 😮 "
