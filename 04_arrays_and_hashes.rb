### Arrays & Hashes


### Recap on Arrays
array = [] # Empty array
puts array.class

# Array of 3 Strings
radiohead = ['Thom', 'Ed', 'Jonny']

# Counting elements in an Array
puts radiohead.length

# In Ruby, we don't care about the types of elements in the Array
random_array = [4, 3, "six", 4.5, false]

# We can even store arrays!
array_of_arrays = [['Sylvain', 'Pierre'], ['Sasha']]


# CRUD for arrays
# CRUD is very usual for db, an array is the simplest form of db

radiohead = ['Thom', 'Ed', 'Jonny', 'Colin']
# indexes      0       1       2       3

# Create
radiohead << 'Sylvain' # Shovel - preferred syntax
radiohead.push('Sasha')
p radiohead

# Read
# name_of_array[index]
# in an array, index starts at ZERO
radiohead[1]

# Reading the last element [-1]
radiohead[-1]
radiohead.last

# Reading several elements
radiohead[0..2] # => Returns an array

# Update
radiohead[0] = "Thom Yorke"

# Delete: Two methods
# Delete by the element (not the most common)
# Deletes ALL instances of that element
radiohead.delete('Sylvain')

# Deleting by index (the most common)
radiohead.delete_at(0) # parenthesis, not square brackeets

#=================
### Hashes
# Defining a hash
bands = {
  'radiohead' => 9,
  'Interpol' => 9.5,
  'Nickelback' => 2,
  'Justin Bieber' => -1
}

# In that case:
# bands are called 'key'
# the score is called a 'value'
# => is called a hash rocket
# In a Hash, keys are *unique*

# CRUD for Hashes

# Create
# hash_name[key] = value
bands['The Strokes'] = 10

# Update
# In a Hash, UPDATE and CREATE are the same
bands['Nickelback'] = 3

# Read
# Reading a value:
bands['Justin Bieber'] # Reading valuee for the key 'Justin Bieber'

# Delete
bands.delete('Interpol')


