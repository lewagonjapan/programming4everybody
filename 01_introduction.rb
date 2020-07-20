#### First livecode - Introduction to Ruby

### First programming concept: Data Types

# String: Written with single or double quotes
"Hello World"
'Hello Class!'

# Integer: round numbers
5
6
-3

# Float: numbers with decimals
4.2
-2.1

# Boolean: in Ruby, true and false are 2 different classes
true
false

# Arrays: arrays are defined with [ ]
["John", "Josie", "Jeff"] # Array of strings
[] # This is an empty array


# Everything in Ruby is an object, we can call methods on them
# The .class method returns the class of the object it's called on
"Hello World".class
5.class
true.class
false.class
[].class

# =================
## Interacting with those objects

# Integers methods
# Simple operations
5 + 5
5 - 1
5 * 2
# Careful with the division !!
5 / 2 # This returns an Integer, 2 in that case

# To get the exact division, at least one needs to be a Float
5.0 / 2
5.0 / 2.0
5.0.class
5.to_f.class

# Modulo
5 % 2 # Returns the remainder of the Euclidian division

# More interesting methods!!
5.even? # Returns *false* (5 is not an even number)
5.odd? # Returns *true*

# .to_s turns an Integer into a String
5.to_s.class


## Strings methods
"Sylvain".reverse # => "niavlyS"

"SyLvAin".upcase # => "SYLVAIN"
"SylvAiN".downcase # => "sylvain"

"sylvain".capitalize # => "Sylvain"

# .length returns the number of characters in a String
# It returns an Integer
"Sylvain".length # => 7
"Pierre".length # => 6
"Sylvain Pierre".length # => 14

# .split splits a String on a space character
# It returns an Array
"Sylvain Pierre".split # => ["Sylvain", "Pierre"]
"Hello my name is Sylvain".split

# Concatenation
# Stick strings together
"Sylvain" + " " + "Pierre"


# =================
## Second Programming concept: Variable
# = is not your mathematical equal sign!!!
# = is called the assignment operator

# Convention: variable names need to be written in lower_snake_case
# Developer Happiness: name your variables smartly!!

first_name = "Sylvain"

# *Re-assign* variables
first_name = "Sasha"

# We can call methods on Variables
# In that case, first_name stores a String, so we can call String methods

first_name.class

first_name.length

# With integers

first_number = 5
second_number = 11

# Additions
first_number + second_number

# Incrementing a variable (increasing by 1)
first_number = first_number + 1

# Syntax sugar for incrementation
first_number += 1

# Ruby doesn't care about data types stored
number = "twenty three"

# We can re-assign a different Data Types
number = 23



# =================
## Short livecode:
# ask user for their first and last name
# display a nicely formatted name

# Pseudo Code => writing in English what we want to do
# 1 - Ask my user for their first name - OK
# 2 - Store the user answer in a variable - OK
# 3 - Ask user for their last namee - OK
# 4 - Store user answer in another variablr - OK
# 5 - Format their name capitalize and concatenate

puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

full_name = first_name.capitalize + " " + last_name.capitalize

# Display nicely to our user using *interpolation*
# Interpolation allows to inject Ruby code in a String
# Interpolation only works with double quotes

puts "Your full name is: #{full_name}"

# ========
## Q&A

# Question 1
# Difference between print and puts
# Print doesn't skip a line
# puts will skip a line

print "This won't skip a line"
print " Seee!!! We're still on the same line"
puts "Now we're skipping a line"
puts "See, we're on the next line"

# Question 2
# Capitalizing two words in a String
# .capitalize only capitalizes the first character
"sylvain pierre".capitalize # => "Sylvain pierre"

# Question 3
# gets.chomp: expecting an input from the user
# ALWAYS store the user answer in a variable
puts "What is your favorite color?"
fav_color = gets.chomp

puts "Your fav color is #{fav_color}"

# Question 4
# Difference between .capitalize and .capitalize!
# methods with a ! are called dangerous or destructive
# The ! is part of the method name
# Method with a ! change the value stored in the variable

# With .capitalize
first_name = "sylvain"
puts first_name # => "sylvain"
first_name.capitalize
puts first_name # => "sylvain"

# With .capitalize!
first_name = "sylvain"
puts first_name # => "sylvain"
first_name.capitalize!
puts first_name # => "Sylvain"


# Conclusion: Be very careful with ! methods

# Question 5
# gets.chomp "gets" a String
# You can cast it into an Integer by using .to_i
puts "How old are you?"
user_age = gets.chomp.to_i

puts user_age.class # => Integer


