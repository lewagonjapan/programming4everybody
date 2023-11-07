### Methods

# variable is a way to store values to be reused
# Methods / functions allow us to store a chunk of code to be reused

# why ?
# stay DRY => Don't Repeat Yourself
# Break down a large problem (coding) in smaller chunks

# def method_name(parameter1, parameter2)
#   return
# end

first_name = "soufiane"
last_name = "ezzine"

# cap_fname = first_name.capitalize
# cap_lname = last_name.capitalize
#
# full_name = "#{cap_fname} #{cap_lname}"
#
# p full_name

def beautiful_name(fname, lname) # parameters
  cap_fname = fname.capitalize
  cap_lname = lname.capitalize

  full_name = "#{cap_fname} #{cap_lname}"

  full_name
end

p beautiful_name("david", "clement") # arguemnts
p beautiful_name("soufiane", "ezzine")
p beautiful_name("jonathan", "krutz")

def squareNumber(number)
  return number * number
end

p squareNumber(2)
p squareNumber(10)
p squareNumber(452)

# Distinction between defining a method and calling a method
# I define a method with parameters / Call a method with arguments
# A method will always return the last line
# the return keyword is option in ruby

# Naming convention
# - methods are alway lower_sname_case
# - methods that end with "?"
def is_even?(number)
  return number % 2 == 0
end

p 2.odd?
p 45.even?

p is_even?(2)
p is_even?(45)
p is_even?(60)

# - methods that end with "!" (destructive methods)
# They modify the original data that is passed to them

def add_bang!(str)
  str.replace(str + '!')
end

my_string = "Hello"
p add_bang!(my_string)
p my_string