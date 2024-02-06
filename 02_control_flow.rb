### Controling Ruby Flow
#### RECAP ####

# string
'donald'
"donald"
# double quotes can interpolate, but single quotes cannot

# arrays
[1,2,3]

# Booleans
true
false
# TrueClass & FalseClass

# integer
1
2
3

# float
4.2
3.1
3.0

# variables
# =
age = 18


### Theory

# ruby runs from top to bottom

# if condition
#   # if the condition is true
#   # do this code here
# elsif condition2
#   # if the second condition is true
#   # do this instead
# else
#   # else, otherwise
#   # do this code here instead
# end

## comparison operators
# ==  => equality
# != => inequality
# > => greater than
# < => less than
# >= => greater than or equal to
# <= => less than or eual to

## logical operators
# && AND => EVERYTHING needs to be true in order to return true
# || OR => Only one of the condition needs to be true to return true
# condition_a && condition_b

# true && true => true
# true && false => false

# true || true => true
# true || false => true
# flase || flase => false

#### In Ruby, All data types are truthy / true, except for (false) and (nil)

# if nil
#   puts "true"
# else
#   puts "false"
# end

### Exercise

## program to check if a restaurant is open

# 0. Welcome user
# 1. Ask the user for the time
# 2. store the user answer into a variable
# 3. compare the time to opening hours
# 4. puts the result to the terminal
# the restaurant will open starting at noon
# if the time is 11, we don't want the customer to leave, we want to tell them, we are opneing soon
# if after 7pm, the restaurant is open for dinner

puts "Welcome to McDonald's"
puts 'What time is it now?'
time = gets.chomp.to_i
dinner_time = time >= 19 && time <= 24
lunch_time = time >= 12 && time < 19

if time == 11
  puts 'The restaurant is opening soon, please wait!'
elsif dinner_time
  puts 'Its dinner time, come in'
elsif lunch_time
  puts 'The restaurant is open for lunch'
else
  puts 'Sorry, we are closed 😢'
end
