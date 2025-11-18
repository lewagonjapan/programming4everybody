### Methods

# Methods allow us to store logic or blocks of code for reuse.
# Methods allow us to stay DRY (Do Not Repeat Yourself).
# In Ruby, we strictly call them "methods," though other languages
# may refer to them as functions or procedures.

# ------------------------------------------
# Theory & Syntax
# ------------------------------------------

# 1. A method is defined with the 'def' keyword, takes a name, and closes with the 'end' keyword.
# 2. The name follows Ruby's naming convention: lower_snake_case.
# 3. A method may or may not return a value.
# 4. The 'return' keyword is optional; the result of the last line of code is always returned automatically.
# 5. A method may or may not take parameters.
# 6. The order of arguments passed must match the order of parameters defined.



# ------------------------------------------
# Defining and Calling Methods
# ------------------------------------------

# DEFINITION:
# We define the method with parameters.
# In this example, 'number' is a parameter (a placeholder).
def multiply_by_three(number)
  number + 3
end

def print_message
  puts "Welcome to the program!"
end

# INVOCATION:
# We call (invoke) the method with arguments.
# 11 is the argument (real value/data) passed to the parameter 'number'.
result = multiply_by_three(11)
puts "My result is #{result}"

# Invoking a method without parameters
print_message

# ------------------------------------------
# Example: Array Manipulation
# ------------------------------------------

students = ["Sergio", "Hatice", "Carl", "Benjamin"]

def delete_from_array(array, index)
  array.delete_at(index)
end

# Deleting the last element (index -1)
delete_from_array(students, -1)
p students

# ------------------------------------------
# Naming Conventions
# ------------------------------------------

# Standard methods: lower_snake_case

# 1. Predicate Methods (end with ?)
# These methods should always return a boolean (true or false).
# Examples: 23.odd?, 23.even?

def is_even?(number)
  remainder = number % 2
  remainder == 0
end

puts "Is 2 even? #{is_even?(2)}"
puts "Is 5 even? #{is_even?(5)}"

# 2. Bang Methods (end with !)
# These are also called "destructive" or "dangerous" methods.
# They usually modify the original object in place.

name = "soufiane"

puts "--- Non-destructive ---"
p name           # "soufiane"
p name.upcase    # "SOUFIANE" (Returns a copy)
p name           # "soufiane" (Original remains unchanged)

puts "--- Destructive (!) ---"
p name.upcase!   # "SOUFIANE" (Modifies the original)
p name           # "SOUFIANE" (Original is now changed)