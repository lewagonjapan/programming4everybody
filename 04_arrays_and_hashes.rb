### Methods
# Allow us to store a chunck of code to be able to *re-use* it

# first_name = 'soufiane'
# last_name = 'ezzine'

# cap_fname = first_name.capitalize
# cap_lname = last_name.capitalize

# full_name = "#{cap_fname} #{cap_lname}"

# p full_name

# Defined method - method definition
def beautiful_name(first_name, last_name)
  cap_fname = first_name.capitalize
  cap_lname = last_name.capitalize
  full_name = "#{cap_fname} #{cap_lname}"

  return full_name
end

# I call / invoke the method
p beautiful_name('soufiane', 'ezzine')
p beautiful_name('simone', 'roveri')

# puts 'What is your first name?'
# f_name = gets.chomp

# puts 'What is your first last?'
# l_name = gets.chomp

puts beautiful_name(f_name, l_name)

## Take away
# make the difference between defining a method and calling a method
# When I define a method I give it parameters
# when I call method I give it arguments
# A method should return something
# If I omit to write a return statement the last line is going to be returned

## naming convetion
# - methods names are alway lower_snake_case
# - method that end with ? should alway return booleans
# - methods that end with ! (destructive) change the object they are called on be careful

### Arrays

# each element of the array has an address ==> Index
students = ['richard', 'racheal', 'simone', 'joyce', 'chris']
# indexes       0          1          2        3         4
# inversed i   -5         -4         -3       -2        -1

## CRUD
# Basic operations I can do on arrays
students = []
# students = Array.new => Another way to create an array

# Create
# array << element (shovel operator)
students << 'tenny'
# array.push(element)
students.push('mat')

# Read
# array[index]
# Get / read the first element of my array
students[0]
# Get / read the last element of my array
students[-1]
# get / read 3 first elements in my array
students[0..2]
# get the index of an element
students.index('joyce')

# get an element that doesnt exist
students[10] # => nil
students.index('soufiane') # => nil

# Update
# array[index] = new_value
students[-1] = 'soufiane'

# how to update in an array of arrays
array = [['richard', 'racheal'], ['simone', 'joyce']]
array[1][0] = 'abby' # => [['richard', 'racheal'], ['abby', 'joyce']]

# Delete
# array.delete(elemnt)
students.delete('soufiane')
#array.delete_at(index)
students.delete_at(0)
