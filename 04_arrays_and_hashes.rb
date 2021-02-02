
### Arrays

### Recap

# Arrays are written with square brackets

[].class # This is the empty array
[1, 2, 3, 4] # This is an Array of 4 elements
['Sasha', 'Yann', 'Douglas', 'Trouni', 'Sylvain'] # Array of 5 Strings
[1, 'Sylvain', 4.5, ['Sasha', 'Douglas']] # OK in Ruby, but not commonly used in programming

# In programming, we start counting at ZERO
['Sasha', 'Yann', 'Douglas', 'Trouni', 'Sylvain']
#   0        1        2         3          4

# interesting array methods
['Sasha', 'Yann', 'Douglas', 'Trouni', 'Sylvain'].length # => 5
['Sasha', 'Yann', 'Douglas', 'Trouni', 'Sylvain'].sample(2) # => Sub Array of 2 random elements

#==========

### CRUD (Arrays, Hashes ... Databases)

# 4 basic operations that you can do with a database
# Think of an array as a simple database

staff = ['Sasha', 'Yann', 'Douglas', 'Trouni', 'Sylvain']


## Read

# Theory: array[index]
staff[1] # Square brackets

# Reading the last element of an array
staff[staff.length - 1]

# Can be shortened to:
staff[-1]

# Reading a sub array using a range
staff[0..2]


## Create

# Theory: staff.push(element)
# OR: staff << element
# These two methods are identical, and add element AT THE END of the array
staff << 'Owen'

## Update

# Theory: array[index_to_update] = new_value

staff[5] = 'Melanie'


## Delete

# Two methods to delete:
# .delete(element)
# .delete_at(index)

# Those are METHODS, so we use () to pass parameters, not []
staff.delete_at(5) # => deletes the element at index 5

# .delete('Melanie')
# ⚠️ .delete() deletes ALL instances of that specific element
