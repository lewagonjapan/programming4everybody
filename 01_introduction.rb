# First livecode - Introduction to Ruby


# ==== INTRODUCTION ====

# Ruby was created in 1995, in Japan by Matsumoto-san.

# Ruby is extremely powerful thanks to Rails, a framework, which allows to quickly build web applications

# Famous Rails apps: Github, Kickstarter, Airbnb, Twitch


# ==== DATA TYPES ====

### First core programming notion: Data Types

## Built-in data types in Ruby?

'Sylvain' # String
"Sylvain" # String

5 # Integer

5.4 # Float

true # true class
false # false class

[1, 2, 3] # Array of 3 elements (integers)
[] # Empty Array

# ======

## Displaying in the terminal

# puts skips a line
puts 'Sylvain'

# print doesn't skip a line
print 'Esther'

# p inspects objects (only used for debugging)
p [1, 2, 3]

# ======

## Calling methods on Objects

# First method: .class

puts 'Esther'.class # => String
puts "Esther".class # => String
puts true.class # => TrueClass
puts false.class # => FalseClass
puts [].class # => Array


# Basic Integer Methods
puts 5 + 5 # => 10
puts 5 - 3 # => 2
puts 5 * 2 # => 10
puts 5 / 2 # => 2 ⚠️ returns the quotient of the euclidian division

# If you want the exact division:
puts 5.0 / 2 # => 2.5

# Advanced Integer methods
puts 2.even? # => true
puts 3.odd? # => true
p 3.to_s # => "3"


# Basic String methods
puts 'esther'.upcase # => 'ESTHER'
puts 'ToKyO'.downcase # => 'tokyo'
puts 'sylvain'.capitalize # => 'Sylvain'

puts 'sylvain'.length # => 7

# Advanced String methods
p 'sylvain'.chars # => ['s', 'y', 'l', v', 'a', i', 'n']
puts '3'.to_i # => 3 (as an Integer)

# To know all the methods for built-in objects:
# ♥️ Ruby doc is your friend
# Ruby Doc for Strings: https://ruby-doc.org/core-3.0.2/String.html
# Ruby Doc for Integers: https://ruby-doc.org/core-2.5.0/Integer.html




# ==== VARIABLES ====

# Second core programming notion for tonight.

# What is a variable?
# A box to store something

# Why do we need variables?
# To store objects, to be able to re-use them later!!


# How does variables work?
first_name = 'Sylvain'

# The String 'Sylvain' is assigned to the variable first_name

## Some vocabulary:
# first_name: name of the variable
# = is the assignment operator
# 'Sylvain' is the object I am storing


# ⚠️ TWO rules ⚠️
# - convention: variable names are lower_snake_case
# - best practice: name your variables EXPLICITLY 🙏
n = 'Esther' # This is a big NO NO 😈


# Advanced concepts for variables

first_name = 'Mandy'
puts first_name.class # => String

last_name = 'Lynn'

# Concatenation: 'sticking' string together
puts first_name + " " + last_name # => 'Mandy Lynn'



# Ruby doesn't care about the type of objects you store in the variables
age = 'thirty eight'

puts age # => 'thirty eight'

# Re-assigning: replacing with a new object
age = 38

puts age # => 38

# Incrementing: mostly used for integers
age = age + 1

puts age # => 39


# Shortcut for incrementation (also called 'Syntax Sugar')
age += 1


# ==== LIVECODE ====

# Pseudo-code
# Writing in plain English what we want to do, step by step


# 1 - greet the user DONE
# 2 - ask for their name DONE
# 3 - Store the user answer in a variable DONE
# 4 - ask for their age DONE
# 5 - Store the user answer in a variable DONE
# 6 - Display the final welcoming message

puts 'Hello! Welcome to our P4E session'
puts ''

puts 'What is your first name?'
print '> '
first_name = gets.chomp # As a string

puts 'How old are you (e.g. 45) ?'
print '> '
age = gets.chomp.to_i # Turn user input into an integer

# Capitalize the first name, and tell their age next year
puts "Welcome #{first_name.capitalize}! Next year, you'll be #{age + 1}"

# #{} is called interpolation
# It allows me to inject Ruby code in a String


# Homework

# 1) Reproduce the behavior of .capitalize without using it







