### Controling Ruby Flow

age = 17

if age >= 20
  puts "You are old enough to drinK!"
else
  puts "Sorry come back when you are old enough"
end

# if condition
# run this code is the condition is true
# else
# run this code is the condition is false
# end

# Conditions
# Are expressions that evaluate to a boolean
# an expression is any ruby code that returns a value ( most of written ruby is an expression )
#
# Arithmetic expressions
1 + 2 #=> 3
2 / 3

# Assignement expressions
age = 30
# y = x + 2

# Literal expressions
# methods

# boolean expressions
2 == 4 # == equality operator ( not mix up with the assignement operator =)
2 > 3 # > greater than
3 >= 3 # Greater or equals
2 < 3 # less than
2 <= 3 # less than or equals

# live code pseudocode

# We have a restaurant
# Write a program to check if a restaurant is open at a given hour

# 1- Welcome the user to our super app
# 2- Ask the user what time they are inquiring about
# 3- Get the user answer / time and store it in a variable
# 4- Compare the users input with the opening hours of our restaurant
# 5- Print the correct information

puts "Welcome to Jiro Sushi 🍣"
puts ''
puts 'What time are you inquiring about?'
print '> '

time = gets.chomp.to_i # get.chomp will always return a string (to_i to trun it into an integer)

if time == 11
  puts "The restaurant is opening soon"
elsif time >= 20 && time < 23
  puts "The restaurant is open for dinner!"
elsif time >= 12 && time < 16
  puts "The restaurant is open for lunch!"
else
  puts "The restaurant is closed!"
end

## Boolean logic logical AND / logical OR
# Logical AND (&&) => The expression will return true only
# if ALL the combining expressions are true
true && true && false && true # false

true && true # true
false && false # fasle
true && false # fale
false && true # false

# Logical OR ( || ) => The expression will return true
# if at least one  of the combining expression is true

false || false # false
true || true # true
false || true # true
true || false # true

# logical NOT ( ! )
!true == false
!false == true

# inequality operator
# time != 11 # boolean

# unless condition
#   # run if the condition is false
# else
#   # run if the condition is true
# end


# time = 14
#
# case time
# when 11, 10
#   puts "time is eleven or 10"
# when 12..15
#   puts "time is between 12 and 15"
# else
#   puts "time is not 11 nor 12"
# end
















