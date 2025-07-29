# First livecode



### Introduction about Ruby

# - Ruby is a programming language (like Javascript, Python, C, etc...)
# - Ruby is fairly old (1993 - same era as Python or Javascript)
# - Its father is Japanese (Matsumoto-san)
# - It was created for "developers happiness"

# - Ruby is the main language behind the Rails framework
# - Rails was created by DHH
# - Famous apps built with Rails: Shopify, Github, Airbnb, Twitch!


# Today, we are going to introduce TWO core notions:
# Data Types & Variables


#### DATA TYPES #####

### String
# Data type used to represent text - it is delimited by '' or " "
'sylvain pierre' # String
"Charles" # String
' ' # Also a String, 1 character
'' # Also a String, 0 character long

### Integer
# Whole numbers
5
2
-1
0

### Float
# Numbers with decimal
2.3
-1.58734
3.000

### Boolean (not a data type per say in Ruby)
true # TrueClass
false # FalseClass


### Array (in some other languages, we call them list)
# delimited by [ ]
# a list of elements / objects
['sylvain', 'sasha', 'douglas'] # array of 3 STRINGS
[1, -1, 2, 0] # array of 4 Integers
[false, 0, 'sylvain'] # Array of 3 elements
[] # Empty Array


### THREE WAYS to display in the terminal

## Puts
# goes to the next line
puts 'sylvain'
puts ' '

### Print
# Does not go to the next line
print 'pierre'

### p
# p lets you "inspect" the type of elements we are manipulating
# it is exclusively used for debugging
p 'Sylvain' # => "Sylvain"
p ['sylvain', 'sasha'] # => ['sylvain', 'sasha']
# It is a shortcut for:
puts ['sylvain', 'sasha'].inspect

### Object Oriented Programming
# In Ruby, everything is an 'object'
# We can call methods on these objects

### .class method
# we can call this .class method on ANY object
# the .class method lets us check the data type (Data Type / Type of Object / Class are all describing the same thing)

puts 'sylvain'.class # String
puts 0.class # Integer
puts [1, 2, 3].class # Array
puts ''.class # String
puts true.class # TrueClass
puts false.class # FalseClass


### Simple String Methods

# reverse
puts 'Carolina'.reverse # => 'aniloraC'

# upcase
puts 'sylvain'.upcase # => 'SYLVAIN'

# capitalize
puts 'sAsHa'.capitalize # => 'Sasha'
puts 'sylvain pierre'.capitalize # => 'Sylvain pierre'

# length
puts 'Dan'.length # => 3 (it returns an Integer)

### Advanced String Methods

# chars
# 'explodes' a string into an array of characters
p 'carolina'.chars # => ['c', 'a', 'r', 'o', 'l', 'i', 'n', 'a']

# to_i
# turns a String into an Integer
puts '5'.to_i # => 5 (as an Integer)
puts '5'.to_i.class # => Integer



### Integer Methods

puts 3 + 3
puts 3 - 2
puts 5 * 2
puts 5 / 2 # with Integers, gives the quotient of the euclidian division
puts 5.0 / 2 # one side or the other needs to be a FLOAT

# to_s
puts 3.to_s # turns an integer into a String

# even? / odd?
puts 5.even? # false
puts 5.odd? # true

# Convention:
# the '?' is part of the name of the method
# by convention, these '?' methods ALWAYS return true or false


### VARIABLES ####

# In plain English: A variable is a box to store something

age = 25

# the Integer 25 is being *assigned* to the variable called age
# age is the name of the variable
# = is the assignment operator

# In some other languages, it can be written differently:
# age <= 25
# age <=> 25
# age <> 25
# ...


# TWO conventions:
# - variables are written in lower_snake_case  (CamelCase)
# - Please, use EXPLICIT names for your variables:
age = 23 # This is OK
n = 23 # This is NOT OK
user_name = 'sylvain' # be as explicit as possible



### Variables behave like we have seen before:

age = 25

# Displaying what is in a variable
puts age # => 25

# calling methods on them
puts age + 1 # => 26
puts age.even? # => false
puts age.to_s # => '25'

### Re-assigning a variable
age = 32
puts age # => 32

age = age + 1
puts age # => 33

age += 1 # Incrementation
puts age # => 34


### LIVECODE #####

## Let's write our first program together!

# Ask our user for their name and age, greet them and tell them how old they will be next year


# 0) Welcome the user to our program! OK
puts 'welcome to our first program!'
puts ''

# 1) Ask the user for their name OK
puts 'What is your name?'
print '> '

# 2) Collect user input and store it in a variable
user_name = gets.chomp # Stores the user input as a STRING

# 3) Ask user how old they are
puts 'How old are you?'
print '> '

# 4) Collect user input and store it in a DIFFERENT variable
user_age = gets.chomp.to_i # Stores as an INTEGER

# 5) Compute the user's age next year and store it in a new variable
# age_next_year = user_age + 1

# 6) Build our final response for the user

# puts 'Welcome ' + user_name + '! ' + 'Next year, you will be... ' + age_next_year.to_s + ' booooo'

# Interpolation
# Interpolation lets us inject *ruby code* directly into a String

puts "Welcome #{user_name.capitalize}! Next year, you will be #{user_age + 1} - booo"
