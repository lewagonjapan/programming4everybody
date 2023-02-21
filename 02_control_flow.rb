### Controling Ruby Flow

# Conditionals
## Theory and syntax

## Syntax
# if condition
#   # execure this code if the condition is true
# elsif condition
# else
#   # execure this code is the condition is false
# end

## Condition
## Is an expression that evaluates to true or false

## Logical Operators
# Equality / inequality ----> == / !=
# greaater than / less then ----> > / <
# greater than or equals / less than or equals ---- > >= / <=

## Not operator (!)
# !true == false
# !false == true

## Ruby is truthy
## All the values in ruby are true except for false and nil

## Logican boolean
# && # logical AND Only return true of all the sides are true
# || # logical OR return true if at least one of the sides is true

## Livecode
# ## opening hours of my restaurant.

# Pseudo-code
# 1 - welcome my user to my super app
# 2 - ask the user for a time ?
# 3 - Get the users input and store it in variable
# 4 - compare the users asnewer to t opening hours
# 5 - print the correct information.

puts "Welcome to my restaurant app"
puts ''
puts "what time are inquiring about (hour)"
print '> '

time = gets.chomp.to_i

if time >= 19 && time < 23
  puts "the restaurant is open for dinner"
elsif time >= 12 && time < 15
  puts "the restaurant is open for lunch"
elsif time == 11
  puts "the restaurant is opening soon"
else
  puts "the restaurant is closed"
end




## This is is practically the same code to illustrate the logical OR
# noon = time >= 19 && time < 23
# evening = time >= 12 && time < 15

# if noon || evening
#   puts "the restaurant is open"
# elsif time == 11
#   puts "the restaurant is opening soon"
# else
#   puts "the restaurant is closed"
# end
