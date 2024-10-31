### Controling Ruby Flow
# Conditionals
# if condition
#   this code is going to run if the condition is true
# else
#   this code is going to run if the condition is not true
# end
#
age = 30

# if age > 18
#   puts "You are old enough!"
# else
#   puts "You are not old enough come back when you are 18!"
# end

# Expressions
# Arithmetic expressions
1 + 2
1 - 1
# variable expression
age = 13
# Boolean expression
12 == 18 # equality operator ( two == )
12 != 18 # not equal
12 > 18 # greather than
12 < 18 # less than
12 >= 18 # geater than or equal
12 <= 18 # less than or equal

# Pseudocode
# Program to to check is a restaurant is open or not

# 1- Welcome the user to the restaurant app
# 2- Ask the user what time are they asking about
# 3- Get the user answer / input and store in a variable
# 4- Compare the variable to the defined times
# 5- Print the correct information / answer to the user

puts "Welcome to Jiro Sushi 🍣"
puts ''
puts 'What time are you inquiring about?'
print '> '

time = gets.chomp.to_i
dinner = time >= 19 && time < 22
lunch = time >= 12 && time < 16

if time == 11
  puts "The restaurant is opening soon"
elsif dinner
  puts "The restaurant is open for dinner"
elsif lunch
  puts "The restaurant is open for lunch"
else
  puts "The restaurant is closed!"
end

# Logical and (&&) # In order for an expression with logical and to be true all the sides of the expression have to be true
true && true && false
# Logical Or (||) # In order fot an expression with logical OR to be true at least one of the sides have to be true
true || false || false

#  Logical NOT ( ! )
!true == false
!false == true

age = 30
condition = age > 18

if !condition
  puts "you are not old enough"
else
  puts "you are old enough"
end
