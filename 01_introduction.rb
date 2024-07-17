# First livecode - Introduction to Ruby

### Introduction
#
#
# Ruby: Created in 1993
# - it was created by a Japanese person called Matz
# - Ruby got picked up by DHH to create Rails
# - Famous apps created with Rails: Github, Kickstarter, Twitch, Airbnb, Twitter (at first)
#
#

# TWO CORE PROGRAMMING NOTIONS
# - Data Types
# - Variables

#### DATA TYPES ####

## String
'Sylvain'
"Sylvain"

## Integer
9
-1
0

## Float
9.2
1.0
-2.3

## Boolean
true # TrueClass
false # FalseClass

## Array
# delimited by square brackets []
[] # Empty array
[1, 2, 3] # Array of 3 integers
[false, 2, 'sylvain'] # Array of 3 elements
#

### Displaying in the terminal: 3 methods
#
## puts
# goes to the next line
puts 'hello class!'

## print
# doesn't go to the next line
print 'my name is Sylvain'

## p
# p is exclusively used for debugging, it is a shortcut to inspect an element
p ['Christine', 'sylvain', 'Damien']
# Is a shortcut for this:
puts ['Christine', 'sylvain', 'Damien'].inspect


# In Ruby, everything is an Object
# We can call methods on these objects

## First method to know: .class
# the .class method lets us check the 'data type' (also called the class) of a given object

puts 'christine'.class # String
puts [1, 2, 3].class # Array
puts ''.class # String
puts 4.2.class # Float
puts false.class # FalseClass


### Integer Methods ###

# Basic methods
puts 5 + 2
puts 5 - 2
puts 5 / 2 # quotient of the euclidian division
puts 5 * 2
puts 5.0 / 2
puts 5 % 2 # modulo: returns the remainder of the euclidian division

# Advanced methods
puts 5.even? # => false
puts 3.odd? # => true
puts 2.to_s # => '2'

### String Methods ###

# Basic methods
puts 'carl'.length # => 4
puts 'caRL'.capitalize # => 'Carl'
puts 'carl'.reverse # => 'lrac'
puts 'carl'.upcase # => 'CARL'

# Advanced Methods
p 'sylvain'.chars
p 'sylvain pierre'.split('')
puts '5'.to_i

# Concatenation
puts 'sylvain' + 'pierre' # => 'sylvainpierre'


#### VARIABLES ####


age = 23

# We are storing 23 in a box called 'age'

# More 'technical' terms:
# We are *assigning* the Integer 23 to the variable called 'age'
# '=' is called the assignment operator (NOT the mathematical equal sign)
#
# In other languages, the assignment operator may be different:
# <>
# ===
# <=
#

# Conventions with variables:
# - variables are ALWAYS written in lower_snake_case: first_name
# - Please, pretty please, write EXPLICIT names for your variables:
user_age = 23 # OK
user_first_name = 'sylvain' # GOOOOD
n = 'sylvain' # NOT GOOD

# In Ruby, we don't need to state the type of a variable (dynamic typing)

# We can re-assign variables with different data types
age = 23
# puts age

# Re-assigning with a different data type: it's totally OK in Ruby
age = 'twenty three'
# puts age

# Incrementation

user_age = 25
puts user_age

user_age += 1
puts user_age
# Is a shortcut (syntax sugar) for:
user_age = user_age + 1
puts user_age

puts user_age.class

#### LIVECODE ####


# Mini program that asks for the user's name and age, and greet them, telling them how old they will be next year

# Pseudo-code
# writing down step by step, in English, what we are trying to do:
# 0) Greet our user! OK
# 1) ask for the user name OK
# 2) get the user answer and store the user name somewhere OK
# 3) ask user for their age OK
# 4) gets the user answer and store the age somewhere OK
# 5) compute the age next year OK
# 6) building the final sentence and output it
#

puts 'Welcome to our mini program for tonight!'
puts '--------------'
puts ''
puts 'What is your name?'
print '> '
user_name = gets.chomp
puts ''
puts 'How old are you?'
print '> '
user_age = gets.chomp.to_i

age_next_year = user_age + 1

# puts 'Hello ' + user_name + ' ! Next year you will be ' + age_next_year.to_s + '. Too bad for you...'

# Using interpolation
# Interpolation is a way to inject *ruby code* into Strings
# Interpolation only works with double quotes

puts "Hello #{user_name.capitalize}! Next year you will be #{user_age + 1}. Too bad for you..."
