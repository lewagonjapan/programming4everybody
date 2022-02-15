
### Arrays



# Last week, we saw 4 core programming concepts
# Data Types, Variables, Conditionals, Looping

# Tonight, we will NOT cover HASHES

# Still we're going to see quite a few important concepts:
# Arrays, Iterators & Blocks, Methods

# We will also have a super cool LIVECODE

# ===== ARRAYS =====


# Recap on Arrays
[].class # Delimited by square brackets

# Any value can be stored in an array
[1, 2, 3] # Array of 3 integers
['sylvain', 'sasha'] # Array of two strings
[1, 'sasha', true] # this is ok in Ruby, but not really common
[[1, 2], [3, 4]] # Array of 2 arrays, each of those arrays have 2 elements

# Counting in arrays
# In an array, we start counting from index ZERO
['sasha', 'sylvain', 'douglas', 'yann']
#   0        1            2        3


### CRUD for arrays

# Create, Read, Update and Delete
# We often talk about CRUD operations for databases
# An array is a simple form of database

le_wagon_team = ['sasha', 'sylvain', 'douglas', 'yann']

###  Read

# reading an element from an array
# Theory: array[index]
le_wagon_team[2] # SQUARE BRACKETS

# Read the last element
le_wagon_team[-1]

# Convenient methods to read
le_wagon_team.first
le_wagon_team.last

le_wagon_team[0..2] # Returns a sub-array


### Create

# Adding an element to an array
# Theory: array.push(element_to_add)
# OR
# array << element_to_add

le_wagon_team.push('wilson')

le_wagon_team << 'junsuke'


### Update

# Changing / updating one element in the array
# Read and re-assign
# array[index] = new_value

le_wagon_team[0] = 'albin'

le_wagon_team[-1] = 'alisa'


### Delete

# Removing an element from an array
# Two ways to do that:
# By element: array.delete(element_to_delete)
# By index: array.delete_at(index_to_delete)

# BE CAREFUL, .delete() and .delete_at() are METHODS
# So we pass arguments with PARENTHESIS

le_wagon_team.delete('alisa')
p le_wagon_team

le_wagon_team.delete_at(-1)
p le_wagon_team