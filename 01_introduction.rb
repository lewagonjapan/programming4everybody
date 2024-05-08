# First livecode - Introduction to Ruby


# ==== INTRODUCTION ====

# - Ruby was created by a Japanese person, Matsumoto-san
# - It was introduced in 1993 (older than Javascript, PHP, C#)

# - Ruby started getting very popular when Rails (Web framework) was created
# - Rails was created in 2004, by someone called DHH

# - What are some Web Applications built with Rails?
# Shopify, Airbnb, X, Kickstarter, Twitch


# Today, we are going to go over TWO core programming notions
# DATA TYPES And VARIABLES

# ==== DATA TYPES =====

#### String
'Sylvain'
"Sylvain"
' ' # also a String
'' # Also a String (Empty String)

### Integers 
# (the data type 'number' doesn't exist in Ruby)
9
2
-3

### Float
9.1
-1.3

### Boolean
true
false

### Array
# a list of several elements (in Python, it's actually called a list)
[5, -1, 0] # an array of 3 Integers
['sylvain', 'douglas', 'chieri'] # array of 3 strings
[] # The empty array
[1, 'sylvain', true] # also an array

# in arrays, we start counting from 0


### How to display things in the terminal?

### puts
# goes to the next line
puts 'My name is Sylvain'

### print
# doesn't go to the next line
print 'I run Le Wagon Tokyo' # no line is being skipped

### p
# used exclusively for debugging - lets you see what types of objects you are manipulating
p ['sylvain', 'doug', 'chieri']
# Equivalent to"
puts ['sylvain', 'doug', 'chieri'].inspect


### Ruby is a Pure Object Oriented Language

# - In Ruby, everything is an object
# - We can call methods on these objects

### .class
# a method that can be called on ANY object, and returns the data type (class) of that object
puts 'Sylvain'.class
puts ''.class # String
puts [1, 2, 3].class # Array
puts [].class # Array
puts true.class # TrueClass
puts false.class # FalseClass


### Integer Methods

### Basic Integer methods
puts 5 + 2 # addition
puts 5 - 2 # subtraction
puts 5 / 2 # division (quotient of the euclidian division)
puts 3 * 2 # multiplication
puts 5 % 2 # modulo (remainder of the euclidian division)
puts 5.0 / 2 # To get the exact result of the division

### Advanced Integer methods
puts 5.even? # => False
puts 5.odd? # => True
puts 5.to_s # => '5' (as a String)

### Ruby Convention
# - ? methods always return true or false
# - the ? is part of the method name


# It is possible to chain methods
# Make sure that you call the right method on the right data type

# Ruby Doc is a way to know ALL methods available
# For Integers: https://ruby-doc.org/core-2.5.1/Integer.html

### String Methods

### Basic Methods
puts 'naomi'.reverse
puts 'sanjo'.length # returns an Integer
puts 'yuta'.upcase
puts 'maXiM'.capitalize # upcase the first character, downcases the rest

puts ''.length # 0
puts ' '.length # 1

puts 'sylvain pierre'.capitalize # only upcases the first character

### Advanced methods
puts '5'.to_i 
p 'sylvain'.chars # Returns an array of each character

# Last but not least: concatenation
# 'sticking' two strings together
puts 'sylvain' + 'pierre' # => 'sylvainpierre'



### ===== VARIABLES ======

age = 23

# I store 23 in a box called age
# The Integer 23 is assigned to the variable called age

# = is called the 'assignment operator'
# In other programming languages, the syntax might be different:
# <= 
# <=> 
# ==
# <> 

# TWO conventions:
# - variable names are lower_snake_case
# For example:
first_name = 'sylvain'

# - Please, pleaaase write variable names EXPLICITLY
n = 23 # BIG NO
f_n = 'sylvain' # BIG NO


# Advanced concepts using variables
age = 23

# Display
puts age

# Operations
puts age + 5

# Call methods
puts age.odd?

# Concatenation
first_name = 'sylvain'
last_name = 'pierre'

full_name = first_name + ' ' + last_name

puts full_name

### Ruby doesn't care about the type of data stored in a variable
age = 23
puts age

# # Re-assigning a variable
age = 'twenty three'
puts age

# Incrementation
# Usually for variable storing Integers, increasing the content of this variable by 1 (2, 3, 4)

age = 23
puts age

age += 1
puts age

# Is a shortcut for:
age = age + 1
puts age



# ==== LIVECODE =====

### Mini-program
# ask name and age to the user, and build a sentence greeting the user and telling them their age next year

# 0 - Greet the user OK
# 1 - ask user for their name OK
# 2 - Get user to write their name AND OK
# 3 - Store the name OK
# 4 - ask user how old they are  OK
# 5 - Get user to write their age AND OK
# 6 - Store the age OK
# 7 - compute the age next year OK
# 8 - build the final sentence

puts 'Welcome to our first mini-program!!!'
puts ''
puts 'What is your name?'
print '> '
user_name = gets.chomp # stops the program and waits for the user to input something, and gets it as a STRING

puts 'How old are you?'
print '> '
user_age = gets.chomp.to_i # As an Integer


age_next_year = user_age + 1

# puts 'Hello ' + user_name + '! ' + 'Next year you will be: ' + age_next_year.to_s

### Interpolation
# A way to inject RUBY CODE inside a String
# Only works with " " (double quotes)
puts "Hello #{user_name.capitalize}! Next year you will be #{user_age + 1}."


