
### Arrays

# Today, we're covering 3 topics:
# Arrays, blocks, methods

# We're not talking about Hashes today... 😢

# ====== RECAP ======

[] # Empty Array

# An array is a 'collection' of elements 
[1, 2, 3] # Array of integers
['sasha', 'yann', 'sylvain'] # Array of strings

# Ruby doesn't care about what you store in an array
[1, 'sasha', true] # This is totally fine

# Usually, all elements are of the same type.

[[1, 2], [3, 4]] # an array of 2 elements, each element is itself an array of 2 elements

# In an array, we start counting from index 0
['sasha', 'yann', 'sylvain'] 
#   0        1        2



# ===== CRUD FOR ARRAYS =====

# CRUD stands for: Create, Read, Update, Delete

# Those are the 4 basic operations that we can do with a database
# An array "behaves" a little bit like a database


radiohead = ['thom', 'jonny', 'phil', 'ed', 'colin']

# Read
# Syntax: array[index]
radiohead[2] # => 'thom'
radiohead[0..2] # => ['thom', 'jonny', 'phil']
radiohead[-1] # => 'colin'
radiohead.first # => 'thom'
radiohead.last # => 'colin'


# Create

# Adding an element in our array
# Two ways:
# array.push(new_element)
# array << new_element

radiohead.push('Kyle') # be careful, we use (), not []
radiohead << 'Kenneth' # This is the preferred way


# Update

# Replace one element by another
# Syntax: array[index] = new_element
radiohead[0] = 'Sylvain'


# Delete

# Two ways:
# array.delete(element_to_delete) # DELETES ALL INSTANCES OF THE GIVEN ELEMENT
# array.delete_at(index_to_delete) ## This is the preferred method
radiohead.delete('Kyle')

radiohead.delete_at(0) # PARENTHESIS, not []
radiohead.delete_at(-1)