### Controling Ruby Flow

# Syntax
# if condition
#   "is the code that is going to execute of the condition is true"
# else
#   "is the code that is going to execute of the the condition is false"
# end

# unless condition
#   "this code is going to run of the condition is false"
# else
#   "this code is going to run if the condition is true""
# end

# condition => expression that resolves to true or false

# comparison operators
# equality operator -> ==
# greater than -> >
  ## greather or equal -> >=
# less than -> <
  ## less or equal -> <=
# Not equal -> !=

# Ruby is a truthy language
# In ruby everything is true exept for nil false

# not operator (!)

# Logican AND / OR

# logical AND -> &&
  # All sides of the operator have to be true for the expression to be true
# puts true && true && false && true -> false

# logical OR -> ||
  # Atleat one side of the operator has to be true for the expression to be true
# puts false || false || false || false || true -> true


# Livecode
# pseudo-code
# program to check if a restaurant is open at a given hour

# 1- welcome the user to to our amazing restaurant
# 2- ask the user what time he is inquiring about
# 3- get the user input and store it in a variable
# 4- compare the user answer to opening hours that we defined
# 5- print the correct information

puts "Welcome to our amazing restaurant"
puts ""
puts "what time are you inquiring about?"
print '> '

time = gets.chomp.to_i
noon = time >= 12 && time <= 15
evening = time >= 19 && time <= 23


# time >= 12 || time <= 15

if time == 11 # most precise condition
  puts "the restaurant is opening soon"
elsif evening
  puts "the restaurant is open fot dinner "
elsif noon
  puts "the restaurant is open for lunch"
else # No expression / no condition -> fall back block
  puts "Sorry The restaurant is closed at this time"
end
