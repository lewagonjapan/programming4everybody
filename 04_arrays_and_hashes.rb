### Arrays

# Recap
[].class # Empty Array
[1, 2, 3, 4] # Array of 4 elements, separated by commas
['Sasha', 'Douglas', 'Yann', 'Sylvain']
[1, 2, 3, 'Sasha', 3, 'Yann', 4.5] # Ruby doesn't care about what data type you store
# Most of the time, we store elements of the same data type


## CRUD for arrays
# CRUD stands for Create Read Update Delete
# (an Array behaves like a mini-database)

# Read
le_wagon = ['Sasha', 'Douglas', 'Yann', 'Sylvain']
#              0          1        2        3
# In an array, indexes start at 0

# Theory: array[index]
le_wagon[1] # Return one element

# Passing a range: array[range]
le_wagon[0..2] # Returning a sub-array

# Reading the last element
le_wagon[le_wagon.length - 1]
le_wagon[-1]


# Create
# Theory: array.push(element)
le_wagon.push('John')

# Other (preferable) syntax: array << element
le_wagon << 'Jack'


# Update
# Theory: array[index] = new_value
le_wagon[4] = 'Joan'


# Delete
# Two ways to delete an element:
# array.delete(element) ⚠️ PARENTHESIS, NOT array.delete_at[]
le_wagon.delete('John') # ⚠️ deletes all instances of that element

# array.delete_at(index)
le_wagon.delete_at(0)
