#
# - Variables allow us to store data.
# - Methods allow us to store code (reusable blocks of logic).
#
# In other languages, methods are also called:
#   - functions
#   - procedures
#   - subroutines
#
# ------------------------------------------------------------
# Naming conventions
# ------------------------------------------------------------
# - Method names follow the same convention as Ruby variables:
#   lower_snake_case.
#
# ------------------------------------------------------------
# Parameters vs. Arguments
# ------------------------------------------------------------
# - Methods may or may not take parameters.
# - We DEFINE methods with PARAMETERS.
# - We CALL methods with ARGUMENTS.
# - A method can take more than one parameter.
#
# When a method is defined with multiple parameters:
#   - The ORDER of the parameters matters (arguments are matched
#     positionally).
#   - The DATA TYPE of each parameter matters too (passing the
#     wrong type can break the method's logic).
#
# ------------------------------------------------------------
# Return values
# ------------------------------------------------------------
# - Methods may or may not return a value.
# - In Ruby, the `return` keyword is optional: the last evaluated
#   expression is returned automatically. (Last line)


# ------------------------------------------------------------
# Example 1: Defining and calling a simple method
# ------------------------------------------------------------
def greet(x, y)
  puts "Hello, #{y} #{x}!"
end
#
# # Calling (also known as invoking, using, or executing) the method:
greet("Louis", "Armstrong")
greet("Cindy", "Lou")
greet("Yjkam", "Smith")
greet("Daisy", "Duck")


# ------------------------------------------------------------
# Example 2: Multiple parameters + conditional logic + return
# ------------------------------------------------------------
def calculate_total(pizza_price, num_pizzas, location)
  if location == "meguro"
    return pizza_price * num_pizzas - 2   # $2 discount in Meguro
  elsif location == "shinagawa"
    return pizza_price * num_pizzas
  end
end

# puts calculate_total(12.99, 4, "meguro")
# puts calculate_total(12.99, 4, "shinagawa")


# ============================================================
# SPECIAL METHOD NAMES
# ============================================================

# ------------------------------------------------------------
# Methods ending with a question mark: ?
# ------------------------------------------------------------
# - Convention: whenever a method returns a boolean (true/false),
#   end its name with a `?`.
# - This is purely a convention — the `?` is part of the method
#   name and helps readability.

def is_even?(number)
  # Could also be written as: return number.even?
  number % 2 == 0
end

# puts is_even?(4) # => true
# puts is_even?(5) # => false


# ------------------------------------------------------------
# Methods ending with an exclamation mark: !
# ------------------------------------------------------------
# - Known as "dangerous" or "bang" methods.
# - They MUTATE (modify in place) the object they are called on,
#   instead of returning a new modified copy.

name = "sylvain"

# Non-destructive version: returns a new string, leaves `name` unchanged
puts name.upcase  # => "SYLVAIN"
puts name         # => "sylvain"  (original is untouched)

# Destructive version: modifies `name` itself
puts name.upcase! # => "SYLVAIN"
puts name         # => "SYLVAIN"  (original has been changed!)