### Controling Ruby Flow
# This file is used to livecode each part during a live session
# conditionals
# if statement

# expressions
# arithmetic expression
2 + 2 # 4
3 - 1 # 2

# variabele expression
age = 32

# boolean expression
2 > 3 # greater than
2 >= 3 # greater or equal
3 < 2 # less than
3 <= 2 # less or equal
4 == 4 # equality operator
4 != 4 # inequality operator

age = 17

if age >= 18
  puts "yes you are allowed to drink"
else
  puts "Sorry come back when you are 18"
end

# Pseudo code
# Welcome the user to our restaurant
# Ask the user what time they are inquiring about
# get user answer and store in a variable ( time )
# compare the variable to opening hours of our restaurant
# print the correct information

puts "Welcome to Jiro Sushi 🍣"
puts ''
puts 'What time are you inquiring about?'
print '>'

# get the use input and convert it to an integer
time = gets.chomp.to_i

dinner = time >= 19 && time <= 22
lunch = time >= 12 && time <= 15

if time == 11
  puts "The restaurant is opening soon"
elsif dinner
  puts "The restaurant is open for dinner"
elsif lunch
  puts "The restaurant is open for lunch"
else
  puts "Sorry the restaurant is closed"
end

# unless is_open
#   puts "Sorry the restuarant is closed"
# else
#   puts "The restaurant is open"
# end

# Logical NOT ( ! ) operator
# puts !true # false !true == false
# puts !false # true !false == true

# logical AND (&&) / OR ( || )

# Logical AND
# true && false && true
# condition && contidion ... => all the sides of the expression have to be true ( for the expression to be true)

# Logical OR
# false || true || false
# condition || condition ... => At least one of the sides of the expression has be true( for the expression to be true)

