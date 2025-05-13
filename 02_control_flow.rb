### Controling Ruby Flow

# Theory
# gets.chom will always return a string

# if condition
#   Some code that is going to run if the condition is true
# else
#  some code that is going to run if the condition is false
# end

# unless !condition
#   some code that is going to run if the condition is false
# else
#   some code that is going to run if the condition is true
# end

# Condition
# an expression that returns / evaluates to a boolean

# Expression
# Arithmetic expressions
1 + 2 # returns an integer
3 / 3
# Assignement expression
age = 18
# literal expressions
"string"
# method expressions


# Boolean expressions
# when comparing values, data types, variables

1 > 2 # return false # greater than operator >
2 < 1 # return false # less than operator <
3 >= 3 # return true # greater or equals than operator
5 <= 4 # return false # less than or equal operat
4 == 4 # return true # Equality operator
5 != 5 # return false # Not equal

# Logical AND => &&
# in order for the expression to be true, ALL THE SIDES OF THE EXPRESSION HAVE TO BE TRUE
true && true && true # true
false && true && true # false

# Logical OR => ||
# in order for the expression to be true, AT LEAST ONE SIDE OF THE EXPRESSION HAS TO BE TRUE
false || false || true # true
false || false || false # false
# logical NOT ( ! )

age == 32 # equality operator
age != 32 # Not equal operator

true == !true # false
false == !false

# pseudo code
# 1- Greet the user to my super restaurants application
# 2- Ask the user for a time (what time are they enquiring about)
# 3- Store the time in a variable called time
# 4- Compare the variable to the opening hours of my restaurant
# 5- Print the correct information to the user

puts "Welcome to Jiro Sushi 🍣"
puts ''
puts 'What time are you inquiring about?'
print '> '

time = gets.chomp.to_i

lunch = time >= 12 && time <= 16
dinner = time >= 20 && time <= 23

if lunch
  puts "The restaurant is open for lunch!"
elsif time == 11
  puts "The restaurant is opening soon!"
elsif dinner
  puts "The restaurant is open for dinner!"
else
  puts "The restaurant is closed :("
end

# if password is 10 char long
# run this logic first
# if password contains numbers
# run this logic as well






















