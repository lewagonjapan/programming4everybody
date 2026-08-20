### Controlling Ruby Flow
# This file is used to live-code each part during the live session

# Conditionals
# if condition
#   # this code runs if the condition is true
# else
#   # this code runs otherwise
# end

time = 15

if time > 11
  # puts "My restaurant is open!"
else
  # puts "My restaurant is closed!"
end

# A condition is an expression that returns a boolean (true or false)

# Arithmetic expressions
1 + 2
1 / 3
2 * 5
# Variable expression
age = 32
# Boolean expressions
15 > 11 # Greater than
14 >= 14 # Greater than or equal to
12 < 11 # Less than
12 <= 12 # Less than or equal to
11 == 11 # Equality operator
11 != 12 # Not equal
# DO NOT CONFUSE == WITH THE = (ASSIGNMENT) OPERATOR
# BE CAREFUL WHEN COMPARING VALUES: THEY SHOULD BE THE SAME DATA TYPE

# Ruby is a "truthy" language:
# everything is considered true, except for false and nil

# Logical AND (&&)
# For a logical AND expression to be true, BOTH sides must be true
# true && true  ==> true
# true && false ==> false

# Logical OR (||)
# For a logical OR expression to be true, AT LEAST ONE side must be true
# true || true  ==> true
# true || false ==> true

# Pseudocode
# A program to inform users about the opening hours of my restaurant

# 1. Welcome the user to our app / restaurant
# 2. Ask the user for the time they are inquiring about
# 3. Read the user's input and store it in a variable
# 4. Compare the value in that variable to the restaurant's opening hours
# 5. Print the correct message to the user

puts 'Welcome to Jiro Sushi 🍣'
puts ''
puts 'What time are you inquiring about?'
print '> '

time = gets.chomp.to_i

if time == 11
  puts "The restuarant is opening soon!"
elsif time >= 19 && time < 23
  puts "The restaurant is open for dinner"
elsif time >= 12 && time < 16
  puts "My restaurant is open for lunch"
else
  puts "My restaurant is closed!"
end


# Logical NOT operator (!)
# true == !false
# true == true

# age = 34
# # if !(age > 18)
# unless age > 18
#   puts "you can not vote sorry"
# else
#   puts "you can vote!"
# end
