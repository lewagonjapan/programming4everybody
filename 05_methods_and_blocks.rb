
### Methods

# Variable is a way to store data
# Method (function) is a way to store logic

# Why ?
# DRY: Do not Repeat Yourself
# Breakdown a bigger problem into smaller chunks ( code problem )

first_name = 'soufiane'
last_name = 'ezzine'

cap_fname = first_name.capitalize
cap_lname = last_name.capitalize

full_name = "#{cap_fname} #{cap_lname}"

puts full_name

# Remember !!!
# a Method is defined with the def keyword and closed with the end keyword
# a method may or may note return a value
# a method will ALWAYS return the last line of code OR the line with the return keyword
# a mehtod may or may not be defined with *parameters*, the order or parameters is important

# Naming convetion
# - lower snake case ( like variables)
# - methods ending with ? will (almost) alway return a boolean
# - methods ending with ! Destructive methods ( ! Dangerous methods )

# defined method
# def print_my_name(fname, lname="generic")
def print_my_name(fname, lname)
  # body of the method ( logic )
  cap_fname = fname.capitalize
  cap_lname = lname.capitalize

  "#{cap_fname} #{cap_lname}"
end

string = "something"
# puts string

# we called / used / invoked they method
# We call methods using *arguments*

puts print_my_name("soufiane", "ezzine")
puts print_my_name("marina", "musaeva")
puts print_my_name("amanda", "smith")

# methods with ?
# puts 5.odd?
# puts 5.even?

def is_even?(number)
  number % 2 == 0
end

# puts is_even?(20) # true
# puts odd?(1) # false


# methods with !

string = "soufiane"
puts string # soufiane

string.upcase
puts string # soufiane

string.upcase!
puts string # SOUFIANE

string # UPCASED NAME for the rest of my program