
### Arrays


# Tonight: Arrays, Iterators / Blocks and Methods


# ⚠️ We're not covering Hashes tonight

# ==== ARRAYS ====

## Arrays Recap

# Arrays are defined with square brackets

[].class # Empty Array
['sasha', 'douglas', 'yann'] # Array of 3 Strings
[1, 2, 3] # Array of 3 Integers
[1, 'sasha', true] # messy array of 3 elements
[[1, 2], [3, 4]] # Array of 2 Arrays


# How to count in an Array?
# In an array, we start counting at index 0
['sasha', 'douglas', 'yann']
#   0          1        2



## CRUD for Arrays

# CRUD is very "important" to know when we talk about databases
# An array is a very simple database
# CRUD stands for: Create, Read, Update, Delete

le_wagon_staff = ['sasha', 'douglas', 'yann', 'sylvain']
#   index            0          1         2        3

# Read

# Theory: array_name[index]
le_wagon_staff[2] # Reading element at index 2
le_wagon_staff[-1] # Reading the last element
le_wagon_staff.last # Reading the last element

le_wagon_staff[0..2] # Reading all elements from index 0 to 2 (as an array)


# Create

# Adding an element in an array, in last place.
# Theory: array_name.push(element_to_add)
# Theory: array_name << element_to_add
le_wagon_staff.push('jeremy')
le_wagon_staff << 'steven'

# Update

# Changing one element in an array
# Theory: array_name[3] = new_element
le_wagon_staff[3] = 'mandy' # Updating element at index 3


# Delete

# Two ways to delete from an array
# based on the element: array_name.delete(element_to_delete)
# ⚠️ Deletes ALL instances of that element
le_wagon_staff.delete('jeremy')

# based on index: array_name.delete_at(index)
le_wagon_staff.delete_at(4)
le_wagon_staff.delete_at(3)

# ⚠️⚠️⚠️⚠️ CRUD for Arrays is super duper important



# ==== ITERATORS ====


le_wagon_staff = ['sasha', 'douglas', 'yann', 'sylvain']
# =>                0         1

# It doesn't make sense to introduce blocks without talking about iterators first


## Four basic iterators

# An iterator is a way to 'iterate' over an array
# For each iterator, remember what they are called on, what should be in the block and what they return


# 1) .each

le_wagon_staff.each do |member|
  puts "#{member} works for Le Wagon Tokyo"
end

# all other iterators are 'advanced' versions of .each
# We can reproduce their behaviors using .each


## 2) .each_with_index

le_wagon_staff.each_with_index do |member, index|
  puts "#{index + 1}) #{member} works for Le Wagon"
end


# 3) .map

# is called on an array, returns an array of the same size, and applies the transformation specified in the block

ages = [35, 24, 56, 4]

ages_next_year = ages.map do |age|
  age + 1 # transformation
end


# 4) .select

# select is called on an array, and returns a new array with all the elements for which the block returns true


le_wagon_staff = ['sasha', 'douglas', 'yann', 'sylvain']

selected_staff = le_wagon_staff.select do |member|
  member.chars.first == 's' # condition
end


# For each iterator, remember how to call them, what to call them on, what should come in the block, and what do they return



