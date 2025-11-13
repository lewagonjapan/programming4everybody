### Controling Ruby Flow

# conditionals

# if condition
#   # Code that runs if the condition is true
# else
#   # Code that runs if the condition is false
# end

my_age = 16
legal_age = 18

if my_age >= legal_age
  puts "You are eligible to vote!"
else
  puts "You are not old enough to vote."
end

my_age = 16
legal_age = 18

is_eligible_to_vote = my_age >= legal_age

# if !is_eligible_to_vote
unless is_eligible_to_vote
  puts "You are not old enough to vote."
else
  puts "You are eligible to vote!"
end

# Conditions
# Any Ruby expression that returns a boolean
2 + 3 # 5
# Boolean expressions
2 > 1 # greater than operator
1 < 3 # less than operator
1 == 1 # equality operator
1 != 2 # not equal operator
# !!!! Do not mistake this for the "=" assignment operator
2 >= 3 # greater than or equal to operator
3 <= 2 # less than or equal to operator

# Keep in mind:
# The order of conditions in a conditional statement is extremely important

# Boolean expression combinations
# Logical operators
# Logical OR -> ||
# For a combination of boolean expressions to be true using ||,
# at least one of the expressions has to be true
true || true # true
false || true # true
false || false # false

# Logical AND -> &&
# For a combination of boolean expressions to be true using &&,
# all of the expressions have to evaluate to true
true && true # evaluates to true
false && false # false (because at least one of the expressions is false)

# Logical NOT -> !
# When put in front of a boolean expression, returns its opposite
!true == false # true
!false == true # true

# Live code
# Pseudo code:
# 1. Greet the user
# 2. Ask the user what time they are asking about
# 3. Collect the user input and store it in a variable
# 4. Compare the user input with the opening hours of our restaurant
# 5. Print the correct information to the user

puts "Welcome to Jiro Sushi 🍣"
puts ''
puts 'What time are you inquiring about?'
print '> '

time = gets.chomp.to_i

if time == 11
  puts "The restaurant is opening soon."
elsif time > 19 && time <= 22
  puts "The restaurant is open for dinner."
elsif time > 12 && time <= 16
  puts "The restaurant is open for lunch."
else # default option
  puts "The restaurant is closed."
end























