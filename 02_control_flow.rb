### Controling Ruby Flow


#========== RECAP ============


# Variables
my_age = 38

# Data Types
'Sylvain' # String
"Sylvain" # String
5 # Integer
5.3 # Float
false # false
true # true
[1, 2, 3] # Array


## Two important syntax points

# getting inputs from the user
puts 'Hey! What is your name?'
user_name = gets.chomp

# Interpolation
# Injecting Ruby code into a String

puts "Welcome to our lecture #{user_name.capitalize}"


#========== CONTROLLING THE FLOW ============


# Today we're going to see TWO more core programming notions


### Third core programming concept: Controlling the flow

# Until now, our code was running from TOP TO BOTTOM
# Controlling the flow allows to "jump around"


## Conditionals
# Theory part

if condition # if something is *true*...
  # then this happens
elsif another_condition # if this is true
  # then something else happens
else # NO CONDITION HERE - Any other case
  # Then this happens
end


## Logical Operators (operators that return true or false)

2 == 3 # Checking equality # => false
2 != 3 # Checking the difference # => true

2 > 3 # bigger than # => false
2 < 3 # smaller than # => true

# && (and) and || (or)
true && false # => false
true || false # => true

# the opposite operator !
!true # => false

# ⚠️ '!' is different from when we call the method .capitalize!
# In the .capitalize! method, the ! is part of the method name


## ⚠️ Ruby is truthy
# Everything in Ruby is true, except for false and nil

if 'sylvain'
  puts 'This was true!'
end

# nil and false are two different objects
puts nil.class
puts false.class


#========== LIVECODE ============

# This livecode summarizes EVERYTHING you need to know about conditionals

# Computing the opening hours of a restaurant
# My favorite restaurant in Tokyo: Kuumba du Falafel

puts 'Hey! What time is it now?'
time = gets.chomp.to_i

if time == 11
  puts 'It is going to open soon!'
elsif time >= 19 && time <= 23
  puts 'Kuumba du falafel is open for dinner! 🥙'
elsif time >= 12 && time <= 15
  puts 'Kuumba du falafel is open for lunch! 🥙'
else
  puts 'Sorry, no falafel for you 😅'
end

# Refactoring (making our code cleaner / easier to read)

puts 'Hey! What time is it now?'
time = gets.chomp.to_i

dinner_time = time >= 19 && time <= 23
lunch_time = time >= 12 && time <= 15

if time == 11
  puts 'It is going to open soon!'
elsif dinner_time
  puts 'Kuumba du falafel is open for dinner! 🥙'
elsif lunch_time
  puts 'Kuumba du falafel is open for lunch! 🥙'
else
  puts 'Sorry, no falafel for you 😅'
end


## Boolean Logic

&& # => true if EVERYTHING is true
|| # => true if AT LEAST ONE is true


true && true && false # => false
true || true || false # => true
(true && true) || false # => true
