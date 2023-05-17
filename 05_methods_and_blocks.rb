
### Methods

# Method / function allows us to store a chunck of code to be able to reuse it later

# Why ?
# 1- to stay DRY
# Don't Repeat Yourself
# 2- methods allow us to break down a large problem into smalled pieces

first_name = 'rei'
last_name = 'polancos'

cap_fname = first_name.capitalize
cap_lname = last_name.capitalize

full_name = "#{cap_fname} #{cap_lname}"

puts full_name

# this method capitalizes the first and last name
def beautiful_name(first_name, last_name)
  cap_fname = first_name.capitalize
  cap_lname = last_name.capitalize
  full_name = "#{cap_fname} #{cap_lname}"

  full_name
end


# invoke / use the method
puts beautiful_name('rei', 'polancos')
puts beautiful_name('hugo', 'correia')
puts beautiful_name('soufiane', 'ezzine')

def addition(a, b)
  return a + b
end

puts addition(4, 6) # 10
puts addition(100, 5) # 105
puts addition(0, 3) # 3

puts "What is your first name?"
fname = gets.chomp

puts "What is your last name?"
lname = gets.chomp

puts beautiful_name(fname, lname)

## Desctinction between defining a method and calling a method
## define a method i define it with parameters
## I call the method I call it with arguments
## the return key word is optional

## Naming convention
# - method name are always lower_sanke_case
# - method end with ? always return a boolean (true of false)
# - method ending with ! (dangerous / destructive methods) they modify the original
#   object they were called on


# value_1 != value_2 # compaison
