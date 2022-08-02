# First livecode - Introduction to Ruby


# ==== INTRODUCTION ====


# - Ruby was created in 1995 by Matsumoto (@matz)
# - Ruby became famous thanks to Rails, a web development framework
# - Famous apps built with Rails: Airbnb, Shopify, Twitter, Kickstarter (not anymore)
# - Twitch was also built with Rails



# Tonite, we're going to discover 2 core programming concepts!

# ==== DATA TYPES ====

### Basic data types

'Sylvain' # String
"Sylvain" #  String

4 # Integer
-2 # Integer

4.5 # Float
-2.1 # Float

true # TrueClass
false # FalseClass

[] # Empty Array
[1, 2, 3] # Array of three Integers


### How to display things in the terminal

# puts (skips a line)
puts 'Markus'

# print (doesn't skip a line)
print 'Alex'

# p (to inspect, only used to debug your code)
p ['Sasha', 'Douglas', 'Yann'] # => ['Sasha', 'Douglas', 'Yann']


# In Ruby, everything is an object
# we can call methods on those objects

### Basic Method: .class

# .class checks the data type of an object
puts 'Michael'.class # => String

puts 4.class # => Integer
puts 4.5.class # => Float
puts true.class # => TrueClass

puts [].class # => Array


### Basic Integer methods

puts 4 + 2 # => 6
puts 3 * 2 # => 6
puts 2 - 1 # => 1
puts 4 / 3 # => 1 (When dividing two integers, returns the quotient of the euclidian division)
puts 4.0 / 3 # to have the exact division, one side needs to be a float


### Advanced Integer methods

puts 3.even? # => false
puts 3.odd? #  => true

# to_s => turns an integer into a String

puts 4.to_s # => '4' as a String

puts 4.to_s.class #  => String


### Basic String Methods

puts 'Michael'.upcase # => 'MICHAEL'
puts 'KHAN'.downcase #  => 'khan'
puts 'Sarah'.reverse # => 'haraS'
puts 'khAn'.capitalize # => 'Khan'

puts 'sylvain pierre'.capitalize #  => 'Sylvain pierre'

puts 'Sylvain'.length # => 7 (an integer)
puts ''.length   # => 0
puts ' '.length # => 1

puts '5'.to_i.class # => Integer

p 'sylvain'.chars # => ['s', 'y', 'l', 'v', 'a', 'i', 'n']

puts 'sylvain'.capitalize + ' ' + 'pierre'.capitalize # => 'sylvain pierre'



# ==== VARIABLES ====

age = 23

# In simple English: We're putting the integer 23 in a box with 'age' written on it

# More 'technical' lingo:
# 1) the integer 23 is being **assigned** to the variable age
# 2) = is called the assignment operator

# Why do we use variables?
# To be able to store objects, and to re-use them later

# Two conventions:
# 1) variable names are always written in lower_snake_case
# 2) Choose an explicit name for your variables:

n = 'Sylvain' # BIG NO NO 🙅‍♀️
first_name = 'Sylvain' # GOOOOOD


### Advanced concepts using variables

age = 23

# Calling methods on variables:
puts age.class # => Integer

puts age + 1 # => 24

# Re-assigning the variable age
age = 'thirty nine'
puts age # => 'thirty nine'

# Ruby doesn't care about the type of data that is stored in a variable


### Incrementation

age = 39

# Incrementating by 1 ( adding 1 to an existing variable )
age = age + 1
puts age # => 40

# Shortcut to increment by 1 (called syntax sugar)
age += 1
puts age # => 41



# ==== LIVECODE ====

# Build a mini-program that asks the user for their name and age, and tell them how old they will be next year

# Pseudo-code
# Writing IN ENGLISH, step by step, what we want to do:
# 0 - Greet the user OK
# 1 - ask user for their name OK
# 2 - ask user for their age OK
# 3 - compute their age next year OK
# 4 - format their name nicely OK
# 5 - display a final sentence greeting the user and telling them their age next year OK


puts 'Welcome to our first mini-program!!'
puts '========'

puts 'What is your name?'
print '> '
user_name = gets.chomp # Stores the user input AS A STRING

puts 'How old are you?'
print '> '
user_age = gets.chomp.to_i # Stores the user age AS AN INTEGER

# Computing the age next year
age_next_year = user_age + 1

# Format the name
formatted_name  = user_name.capitalize

puts 'Welcome ' + formatted_name + '! next year you will be ' + age_next_year.to_s + ' years old'

# Let's rewrite this last sentence using String interpolation:

puts "welcome #{formatted_name}, next year you will be #{age_next_year} years old!"


### String Interpolation

# - Only works with double quotes ""
# - It is a way to inject Ruby code into a string
# - Syntax is #{}

