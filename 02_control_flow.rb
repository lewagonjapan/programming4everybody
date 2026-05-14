### Controlling Ruby Flow

# if condition
#   # code to execute if the condition is true
# else
#   # code to execute if the condition is false
# end

age = 20
if age < 18
  puts "You can't vote yet! Come back later."
else
  puts "You can vote!"
end
# Note: `if !(age >= 18)` also works, but `if age < 18` is clearer.
# Whenever you find yourself negating with `!`, it's usually easier
# to flip the comparison instead.


# condition  => a Ruby expression that evaluates to true or false
# expression => any Ruby code that evaluates to a value

# arithmetic expressions
2 + 2 # => 4
5 * 3 # => 15

# assignment expressions
age = 20          # => 20  (assignment also returns the value assigned)
new_age = age + 1 # => 21

# boolean expressions => evaluate to true or false
age >= 18 # greater than or equal to
age > 18  # greater than
age <= 18 # less than or equal to
age < 18  # less than
13 == 13  # equality   => true
14 != 13  # not equal  => true
# /!\ Don't confuse `=` (assignment) with `==` (equality check):
#     age = 18   sets age to 18
#     age == 18  asks whether age equals 18

# Logical operators

# Logical AND => &&
# (age >= 18) && (city == "shinagawa")
# For the whole expression to be true, ALL conditions must be true.
# true  && true  && true  => true
# true  && false && true  => false

# Logical OR => ||
# (city == "meguro") || (city == "shinagawa")
# For the whole expression to be true, AT LEAST ONE condition must be true.
# false || false || true  => true
# false || false || false => false

# Logical NOT => !
# !true  => false
# !false => true


# livecode
# Pseudo code
# 1- Welcome the user to our application
# 2- Ask the user what time they are inquiring about
# 3- Get the user's answer and store it in a variable
# 4- Compare the user input to the opening hours of the restaurant
# 5- Print the correct message to the user

puts "Welcome to Jiro Sushi 🍣"
puts ''
puts 'What time are you inquiring about?'
print '> '

time = gets.chomp.to_i

if time == 11
  puts "The restaurant is opening soon!"
elsif time >= 12 && time < 15
  puts "The restaurant is open for lunch!"
elsif time >= 19 && time < 22
  puts "The restaurant is open for dinner!"
else
  puts "The restaurant is closed!"
end


# Ruby truthiness
# In Ruby, ALL values are considered "truthy" except `nil` and `false`.
# That means 0, "", [], and {} are all truthy — unlike in many other languages.

# var = "some string"
#
# if var
#   puts "My variable is truthy"
# else
#   puts "My variable is falsy"
# end


# unless => the opposite of if. Runs the block when the condition is FALSE.
#
# unless condition
#   # code to execute if the condition is FALSE
# else
#   # code to execute if the condition is TRUE
# end
#
# Example:
# unless age >= 18
#   puts "You can't vote yet!"
# else
#   puts "You can vote!"
# end