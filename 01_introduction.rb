# First livecode - Introduction to Ruby

### ===== INTRODUCTION =====

# A few words about Ruby:
# - Ruby was created in 1993, by a Japanese person, Matz
# - Ruby was created for developer happiness
# - Rails is the most popular Ruby framework:
# Airbnb, Github, Shopify, Twitch are all applications built in Rails


### Today, we are going to cover TWO core programming notions

# DATA TYPES & VARIABLES



## ===== DATA TYPES =====

### String
"Sylvain" # String
'Pierre' # Also a String
# String Interpolation only works with double quotes

### Integer
5
0
-2

### Float
4.21
-2.1

### Boolean (strictly speaking, boolean is NOT a data type in Ruby)
# True class (class is synonym of data type)
true

# False class
false

### Array (in Python, we call it a list)
[] # Empty array
[1, 2, 3] # Array of 3 integers
['sylvain', 'sasha', 'douglas'] # Array of 3 Strings
#    0          1        2
[4.21, false, 'sylvain']


### How to display things in the terminal?

### puts
# Puts goes to the next line
puts 'Sylvain'

### print
# Print doesn't go to the next line
print 'HI, my name is '
puts 'Sylvain'

### p
# only used for debugging
# p lets me Inspect what is a given object
p [1, 2, 3] # => [1, 2, 3]
# p is a shortcut for:
puts [1, 2, 3].inspect


### In Ruby, everything is an object - we can call methods on these objects

### Most basic method we can call: .class
# .class lets us check the data type of a given object
puts 'sylvain'.class # String
puts 5.class # Integer
puts [1, 2, 3].class # Array
puts ''.class # String
puts [].class # Array
puts [1, 'sylvain', 4.3].class # Array



#### String Methods ####

### basic string methods
puts 'sylvain'.length # Returns an integer
puts 'ivan'.capitalize # 'Ivan'
puts 'HECTOR'.downcase # 'hector'
puts 'max'.reverse # 'xam'

### advanced string methods
p 'max'.chars # => ['m', 'a', 'x'] (returns an array)
puts '7'.to_i.class # Turns a String into an Integer


# In Ruby, we can chain methods
# Make sure that you call the right method on the right type of object


### Concatenation
# Sticking strings together
puts 'sylvain' + 'pierre' # => 'sylvainpierre'

#### Integer Methods #####

### Basic methods
puts 3 + 2
puts 5 - 2
puts 7 * 2
puts 5 / 2 # returns the quotient of the euclidian division
puts 5.0 / 2 # to get the exact result, one side needs to be a Float

### Advanced methods
puts 5.to_s.class # returns a String
puts 5.to_f # returns a Float
puts 5.odd? # true
puts 5.even? # false

### Ruby Doc is your best friend

# ============================

# ===== VARIABLES =====

age = 23
# I am storing 23 in a box called age

# I am *assigning* the Integer 23 to the variable called 'age'
# the equal sign = is called the *assignment operator*
# in some other languages, the asssignment operator has a different syntax:
# <=>
# <=
# ==
# <-

### TWO conventions for variables:
# 1) variables are written in lower_snake_case
first_name # OK
First_Name # NO NO

# 2) Please, pretty please, use explicit names for your variables
age = 23 # OK
n = 23 # not OK

first_name = 'Sylvain' # OK
f_n = 'Sylvain' # Not OK

# Let's play around with variables:

age = 23

# Calling .class
puts age.class # => Integer

# Basic operations
puts age + 1 # => 24

# Re-assigning
age = 'twenty three'
# => Ruby doesn't care about which data type is stored
# It is called a dynamic language

# Incrementation
age = 24
puts age # => 24

age = age + 1
puts age # => 25

# Equivalent to:
age += 1
puts age # => 26


# ==== LIVECODE =====

# Let's write a short program that asks a user for their name and age, greet them, and tell them how old they will be next year

# Let's write some pseudo-code!
# 0 - welcome the user - OK
puts 'Welcome to our first livecode!'
puts ''
puts '============'
# 1 - Ask user for their name - OK
puts 'What is your name?'
print '> '
# 2 - Get user input AND store user input in a variable - OK
first_name = gets.chomp # Stored as a STRING
# p first_name
# 3 - Ask user how old they are
puts 'How old are you?'
print '> '
# 4 - Get user input and store user answer in another variable
user_age = gets.chomp.to_i # INTEGER
# 5 - Compute user's age next year
age_next_year = user_age + 1
# puts age_next_year
# 6 - Return the last sentence with the age next year
puts 'Hello ' + first_name + '! Next year, you will be... ' + age_next_year.to_s + ' !'

# Better way - let's use String Interpolation
# Interpolation lets us INJECT Ruby code directly inside a String
# Interpolation only works with double quotes
puts "Hello #{first_name.capitalize}! Next year you will be #{user_age + 1}"
