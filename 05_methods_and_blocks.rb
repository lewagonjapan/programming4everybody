### Methods

# Methods (function, precedures) a way to store a chunk of code ( some logic ) in order to be able to reuse
# why methods ?
# DRY
# break down complexe code into more managable, reusable chunks

# first_name = "damien"
# last_name = "ezzine"
#
# cap_fname = first_name.capitalize
# cap_lname = last_name.capitalize
#
# full_name = "#{cap_fname} #{cap_lname}"
# full_name

# a function is defined using the def keyword and closed with the end keyword
# a function may or may not take arguments
# a function may or may not return a value

# defined a function
# when defining we pass *arguments*
# return keyword is optional
# a method will always return the last line of codes
def capitalize_name(f, l)
  cap_fname = f.capitalize
  cap_lname = l.capitalize

  # return "#{cap_fname} #{cap_lname}"
  "#{cap_fname} #{cap_lname}"
end

# Invoke / use / call the function
# when using the function we pass *parameters*

soufiane = capitalize_name("soufiane", "ezzine")

soufiane

# METHODS naming convesion
# method names should always be lower_snake_case

# methods ending with a ? .odd? .even?
#  # should always return a boolean

def is_even?(number)
  number % 2 == 0
end

p is_even?(3)
p is_even?(10)
p is_even?(0)

# methods ending with a ! .capitalize! .map! ( Dangerous methods )
## Mutate or change the data that is used with them or they are called on
def add_bangs!(str)
  str.replace(str + "!!!")
end

greeting = "Hello"
p greeting
add_bangs!(greeting)
p greeting


















