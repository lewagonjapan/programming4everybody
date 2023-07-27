### Controling Ruby Flow

# conditionals
# Concepts
# syntax
if nil
  # block of code that is going to run if the condition is true.
else
  # block of code that is going to run if the condition is false
end

unless condition
  # block of code that is going to run if the condition is false
else
  # block of code that is going to run if the condition is true.
end

# condition
# is an expression that return true of false

# expression
# 2 + 2 # arithmetic expression
# !(2 - 1) # !1
# 2 / 4
# x = 20
# y = x + 5 # using the variable x is an expression

# 2 == 3 # boolean expression
# 2 > 4 # boolean expression
# 3 < 4
# 2 >= 2
# 2 <= 2

# Logical NOT (!)
# !true == false
# !false == true

# nil value
name = nil

# Everything in ruby is true (any data type)
# exept for false and nil

# Logical AND / OR
# && # condition && condition
# || # condition || condition

# For the the condition to return true
# If I am using and AND logical operator (All the sides of the operator have to be true)
# if I am using the OR local operator (At least one of the sides has true)

# livecode
# I have a restaurant
# Program to check if the restaurant is open at a given hour

# pseudocode
# 1. welcome the user to the app
# 2  ask the user what time they are inquiring about
# 3. get the user answer / store it in a variable ( so we can reuse it)
# 4. compare the user answer to the opening hours of the restaurant
# 5. print the correct information to the user

puts "Welcome to Jiro sushi 🍣"
puts " "
puts "What time are you inquiring about?"
print "> "

time = gets.chomp.to_i # 20
noon = time >= 12 && time < 15
dinner = time >= 19 && time < 23

if time == 11 # the most specific
  puts "The restaurant is opening soon."
elsif dinner
  puts "The restaurant is open for dinner"
elsif noon
  puts "The restaurant is open for lunch."
else # no condition goes here
  puts "The restaurant is closed."
end
