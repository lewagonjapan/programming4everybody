### Controling Ruby Flow
# Conditionals
# if condition
#   # some code that is going to run if the condition is true
# else
#   # some code that is going to run if the condition is not true
# end

# unless condition
#   # code that is going to run if the condition is false ( not true )
# else
#   # code that is going to run if the conditiono is true
# end

# what is a condition
# Any ruby expression that return a boolean
# arithmetic expressions
# 2 + 2
# 4 - 5
# varibale expression
# age = 20
# Boolean expression
# ( == ) is the equality operator
# ( = ) the assignment operator
2 == 4 # is equal
2 != 4 # inequality opertator
2 > 4 # greater than
3 < 7 # lower than
3 >= 5 # greater than or equal
5 <= 5 # lower than or equal

# ( ! ) Not operator
true == true # true
false == false # true

!true == false # true
!false == true # true

# logical AND ( && )
number = 3
number > 2 # true
number == 3 # true

# for expression with the logical AND (&&)
# all sides of the expression have to be true
(number > 2 && number == 3 && number > 5) # true
# true && true => true
# true && true && true && true => true
# true && false && true && true

# logical OR ( || )
# for expression with the logical OR (||)
# at least one side of the expression has to be true

number = 10
(number == 10 || number == 0) # true
# true || true || true => true
# false || false || false || true => true



# age = 17
#
# if age >= 18
#   puts "You can vote!"
# else
#   puts "You can not vote!"
# end

# pseudocode
# Program to check if a restaurant is open or not

# 1- Greet the user to our application
# 2- Ask the user for the time they are inquiring about
# 3- Store the user input / answer in a variable
# 4- compare the users input with the opening hours of the restaurant
# 5- Print the correct information

puts "Welcome to Jiro Sushi 🍣"
puts " "
puts 'What time are you inquiring about?'
print '> '

time = gets.chomp.to_i
lunch = time > 12 && time <= 16
dinner = time > 19 && time <= 23

# open = lunch || dinner
# open = (time > 12 && time <= 16) || (time > 19 && time <= 23)

# unless !(time > 12)
if time == 11
  puts "The restaurant is opening soon"
elsif lunch
  puts "The restaurant is open for lunch"
elsif dinner
  puts "The restaurant is open for dinner"
else
  puts "The restaurant is closed :("
end
