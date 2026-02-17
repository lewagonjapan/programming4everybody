### Methods
# Also called functions, methods, procedures, subroutines
# To store a piece of logic / code that we want to reuse

# Theory
# We define a method using the def keyword
# A method may or may not take parameters
# We define a method with parameters (placeholders)
# We call a method with arguments (actual values)
# A method may or may not return a value
# The return keyword is optional; in Ruby, a method returns the last line if not specified

# Order of parameters vs. order of arguments
# The order of arguments should match the order of parameters in the method definition
# The datatype of the argument should match the datatype of the parameter in the method definition

# Naming convention
# - Methods are named using lower_snake_case
# - Different ways to name a method:
#     - Normal name: calculate_total
#     - Question name: is_valid? (usually returns a boolean)
#     - Bang name: save! (dangerous methods that change the data passed to them forever)

# Problem definition
puts "Hello, Aisha to the class"
puts "Hello, Joshua to the class"
puts "Hello, Thomas to the class"

# Define my method
def greet(student, class_name)
  puts "Hello, #{student} to the #{class_name} class"
end

# Call the method / use the method
greet("Aisha", "ruby")
# greet("databases", "Joshua") # No good
greet("Thomas", "ruby")

def calculate_total(pizza_price, num_pizzas)
  pizza_price * num_pizzas
end

total_cost = calculate_total(3, 10)

puts "You owe us #{total_cost} dollars"

def is_even?(number)
  number % 2 == 0
end

puts is_even?(5) # false
puts is_even?(6) # true

name = "thomas"

puts name.upcase
puts name

puts name.upcase!
puts name