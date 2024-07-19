### Controling Ruby Flow

# Conditionals

# if condition
#   "this code is going to execute if the condition is met"
# else
#   "this code is going to execute if the condition is not met"
# end

# unless condition # opposite if an if statement
#   "this code is going to execute if the condition is not met"
# else
#   "this code is going to execute if the condition is met"
# end

# Logical AND (&&) ## all the sides of the expression have to be true for the expression to be true
true && true # true
false && true # false
# Logical OR (||) ## At least one of the sides of the expression has to be true for expression to be true
true || false || false # true
false || false || false # false
true || true || true || false # true

# Logial not ( ! )
true == !false
false == !true

# In ruby everything exept false and nil is true

age = 16

if age >= 18
  # puts "You can drink!"
else
  # puts "You can not drink! Sorry"
end

# expressions
2 + 2 # arithmetic expression
2 - 2

x = 20 # variable
y = x + 1

# boolean expressions
2 == 4 # boolean expression
2 > 4
2 < 4

# different comparisons in ruby
2 == 4 # equality operator ()
2 != 4 # Inequality operator
2 > 4 # Greater than
2 >= 4 # Greater or equals
2 < 4 # less than
2 <= 4 # less or equals

# live code
# pseudo code

# 1 - Welcome the user to our restaurant ok
# 2 - Ask the user for a time ok
# 3 - Get the user input and store it in a variable so i can reuse it ok
# 4 - compare the user input to the opening hours of the restaurant ok
# 5 - print the correct information ok

puts "Welcome to Jiro Sushi 🍣"
puts ''
puts 'What time are you inquiring about?'
print '> '

time = gets.chomp.to_i

evening = time >= 19 && time < 23
noon = time >= 12 && time < 16

if time == 11
  puts "The restaurant is opening soon"
elsif evening
  puts "The resraurant is open for dinner"
elsif noon
  puts "The restaurant is open for lunch"
else
  puts "The restaurant is closed!"
end
