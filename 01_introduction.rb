# First livecode - Introduction to Ruby

### Introduction

# Ruby: programming language
# Rails: framework
# Rails is the most efficient framework to build applciations
# Extremely cool to prototype or quickly launch a service



### Data Types

# What Data Types do you know?

# String
"Hello World!"
'Same thing with single quotes'

# Integer
5
4
-4

# Float
5.6
-3.2
1.0

# Boolean
true
false

# Arrays
[5, 6, 7] # Array of Integers
["Sylvain", "Sasha"] # Array of Strings
[] # Empty Array
[5, "Sylvain", 6, "Sasha"] # Array of 4 elements (Strings and Integers)
[[5, 6], ["sylvain", "sasha"]] # Array of 2 elements, each element is an array

# How to display in the terminal?
puts
print
# ⚠️ puts adds a line break, print doesn't

# You can inspect your code with p (mostly used for debugging)
p


# In Ruby, everything is an Object
# You can call methods on object

# The .class methods allows to check which Data Type you're manipulating

"Sylvain".class # String
[[5, 6], ["sylvain", "sasha"]].class # Array
[].class # Array

# What are some very common methods for Integers, Strings...

# Integers

# Standard Operations
5 + 5
5 - 3
5 * 2
5 / 2 # ⚠️ when dividing two integers, returns the quotient

# To get the exact division, one side needs to be a float
5.0 / 2 # 5.0 is a float

# Modulo operator
6 % 3 # => 0 - Convenient when you want to check divisiblity

# Other common Integer methods

5.odd? # => true
5.even? # => false

# ⚠️ the ? is part of the method name

5.to_s # Transforms an integer into a string
"5".to_i # Transforms a String into an Integer

# Check Ruby doc for all Integer methods!
# https://ruby-doc.org/core-2.5.0/Integer.html


# String Methods

"Le Wagon".length # => 8 (space is a character)
"Le Wagon".reverse # => "nogaW eL"
"Le Wagon".downcase # => "le wagon"
"Le Wagon".upcase # => "LE WAGON"
"sylvain".capitalize # => "Sylvain"

"Le Wagon".split # => ["Le", "Wagon"]
# by default, .split splits on spaces
# ⚠️ .split returns an Array


# ⚠️ Advanced: We can specify which character to split on:
"Le_Wagon".split("_") # => ["Le", "Wagon"]


# String Concatenation
# Concatenation is sticking strings together
"Le" + " " + "Wagon" # => "Le Wagon"



### Variables

# A variable is a box to store some value
number = 5

# ⚠️ Vocabulary
# = is called the assignment operator
# The value 5 is assigned to the variable number
# ⚠️ It is not the same as the mathematical equal sign
# In Ruby, variable names are lower_snake_case

# Why do we use variables?

# To store a value and re-use it later in the code

# Calling methods on variables
number.class
number.even?

# Re-assigning a variable
number = 7 # we assign a new value to the variable number

# Incrementing (in that case, adding 1)
number = number + 1

# Syntax sugar for incrementation
# Syntax Sugar is for your eyes only
number += 1

# Storing strings
first_name = "Sylvain"

first_name = 5
# Ruby doesn't care about the type of data you're storing



#### Livecode

puts 'How old are you?'
print '> '
age = gets.chomp.to_i # Storing user answer into the variable age as an Integer

puts ""
puts "One year passed...."

puts "You are now #{age + 1} years old"


# ⚠️ gets.chomp returns a String
# ⚠️ gets.chomp.to_i returns an Integer

# #{} is called interpolation - it allows to inject Ruby code into a String
# ⚠️ Interpolation can only be used with double quotes




### Q&A

# Q 1 - What is the special character to add a new line?
""
"\n this is displayed on the next line"

# Q2 - What does .chomp do?
# .chomp removes special characters

# Q3 - Coding in Chrome?
# Use REPL

# Q4 - can we do "you are" + age + "years old"
# Short answer: No
# Long answer: Ruby doesn't let you 'add' Strings and Integers

# Q5 - Where can I practice coding?
# Codewars is your best friend!
# https://www.codewars.com/

