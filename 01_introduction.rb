# First livecode - Introduction to Ruby

## Very first programming concept: Data Types
# String
"Sylvain"
'Sylvain'
# Integer (Numbers)
5
# true / false (boolean)
true
false
# Float
5.6
# Array (written with square brackets)
[1, 2, 3]
['Sylvain', 'Sasha', 'Doug', 'Yann']

#=======

## Displaying code: puts and print
puts "Sylvain" # Goes to the next line
print "Sylvain" # Doesn't go to the next line
puts "Pierre"


# .class allows us to check the data type
puts "Sylvain".class
puts 5.class
puts [].class
puts 5.8.class

#=======

## Methods we can call on Integers

puts 5 + 5
puts 5 - 2
puts 5 / 4 # When we divide 2 integers, we get the quotient
puts 5.0 / 4

puts 10 % 5 # Remainder of the division of 10 by 5 is 0
puts 11 % 5 # Remainder of the divison 11 by 5 is 1

puts 5.even? # return true if Integer is even
puts 5.odd? # return true if Integer is odd
p 5.to_s #.to_s turns an integer into a String

puts 5.to_s.class # String

#=======

## Methods we can call on Strings!

puts "Sylvain".upcase
puts "Sylvain".downcase
puts "Sylvain".length # Number of characters in the string

p "Sylvain Pierre".split
puts "This is a long sentence that I am writing".length

p "5".to_i # Turns a string into an integer

#=======

## Second programming concept: Variables

# A variable is a box in which we can store a value
# Assigning the value "Sylvain" to the variable first_name
first_name = "Sylvain" # = is called the assignment operator

# Why do we use variables?
# to be able to store and re-use values
puts first_name

num_1 = 5
num_2 = 3

puts num_1 + num_2

# convention: variables are written with *lower_snake_case*
first_name # Good
First_ Name # Not good

# Calling a method
puts first_name.upcase

# String Concatenation
first_name = "Sylvain"
last_name = "Pierre"
puts first_name + last_name

# Incrementing variables
num = 1
puts num
# Reassigning and Incrementing num
num = num + 1
puts num

# Shortcut (Syntax Sugar) for incrementation
num += 1
puts num

#==========

## Mini-program

# Asking user for first and last name
# Return first name capitalized, and last name upcased

# Pseudo-code
# 1 - Ask my user for their first name
puts "What is your first name?"
# 2- Store user answer
first = gets.chomp
# 3 - Capitalize the first name

 # .capitalize! changes the value in *first*
# 4 - Ask user for last name
puts "What is your last name?"
# 5 - Store Answer
last = gets.chomp
# 6 - Upcase last name

# 7 - Display the result
puts "Your full name is: #{first.capitalize} #{last.upcase}"

#===========

## Q&A

# Destructive methods
# non-desctructive
name = "Sylvain"
upcased_name = name.upcase
puts upcased_name

# destructive / dangerous
first_name = "Sasha"
first_name.upcase!
puts first_name
