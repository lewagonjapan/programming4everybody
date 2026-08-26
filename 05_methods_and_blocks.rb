### Methods

# Define methods
# Functions, procedures, methods
# Reuse logic: define it once and reuse it multiple times.

# Theory
# - a method is defined using `def ... end`
# - the naming convention of a method is the same as a variable: lower_snake_case
# - a method may or may not take parameters
# - a method may or may not return a value
# - if a method returns data, the `return` keyword is optional
# - a method will always return its last line

# puts "Hello, Lance welcome to today's course!"
# puts "Hello, Yohei welcome to today's course!"
# puts "Hello, Emily welcome to today's course!"

# Define a method / function
# Define a method with parameters
def greet(name)
  puts "Hello, #{name} welcome to today's course!"
end

# invoke / call / use the method
# Call a method with arguments
greet("Lance")
greet("Yohei")
greet("Emily")

# calculate_total calculates the total price of an order
# takes pizza_price (integer)
# takes num_pizza (integer)
# returns an integer
def calculate_total(pizza_price, num_pizza)
  total = (pizza_price - 2) * num_pizza
  return total
end

# calculate_total(11.23, 5)

receipt1 = calculate_total(12.33, 2)
receipt2 = calculate_total(2, 12.33) # argument order matters - this is not the same
puts receipt1
puts receipt2


# Methods defined with ?
# Should return booleans
13.odd?
13.even?

def is_even?(number)
  number % 2 == 0
end

p is_even?(13)
p is_even?(10)


# Methods defined with !
# DANGEROUS / MUTATING METHODS
name = "yohei"
name.upcase!
puts name


# Blocks follow the same rules as methods.
# You can think of them as methods without a name.
