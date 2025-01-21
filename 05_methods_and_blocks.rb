### Methods
# methods
# variabales allow us to store data ( to reuse it later )
# Methods allow us to store logic ( chunck of code ) to be reused later
# Methods / functions / procedures

# Why?
# DRY (stay)
# Do not Repeat Yourself
# To break down a larger problem into smaller pieces

# A method is define with the def...end keyword
# A method may or may not take parameters
# The order or parameters matters
# The return is optional
# The last line will alway be returned



first_name = "soufiane"
last_name = "ezzine"

cap_fname = first_name.capitalize
cap_lname = last_name.capitalize

full_name = "#{cap_fname} #{cap_lname}"

# We defined a method ( I define parameters )
def beautiful_name(fname, lname)
  cap_fname = fname.capitalize
  cap_lname = lname.capitalize

  "#{cap_fname} #{cap_lname}"
end

# We call / use the method ( with argurments)
# soufiane = beautiful_name("ezzine", "soufiane")
# p soufiane
beautiful_name("ezzine", "soufiane")
beautiful_name("ryan", "ward")
beautiful_name("crystal", "arevalo")
beautiful_name("jester", "parez")

# Naming convention
# A methods name ( like variables ) should be lower_snake_case
# Methods that end with a "?" *should* return a boolean


4.even?
def is_even?(number)
  # % modulus operator / remainder
  number % 2 == 0
end

# p is_even?(4)
# p is_even?(5)

# Methods that end with a "!" is a *destructive* methods (/!\) dangerous
def add_bang!(string)
  string.replace(string + "!") # hello => hello!
end

my_string = "Hello"
p my_string
add_bang!(my_string)
p my_string
