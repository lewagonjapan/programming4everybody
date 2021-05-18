
# ======= RECAP =======


# So far, we saw FOUR core programming notions
# - Data Types
# - Variables
# - Conditionals
# - Looping

# Three more notions for tonight
# - Arrays (the simplest 'database')
# - Iterators & blocks
# - Methods

# We're not talking about Hashes!


# ======= ARRAYS =======

[] # the most basic array, the empty array
[].class # => Array

# Arrays are a collection of objects
# Usually, they are all the same type

[1, 2, 3] # Array of integers
['sasha', 'sylvain', 'douglas'] # array of strings
[[1, 2], [1, 2]] # Array of 2 arrays

# In Ruby, we can also do that:
[1, 'sasha', [1, 2]] # array of 3 'random' elements


# CRUD for arrays

# The most important thing with array: CRUD
# CRUD stands for Create, Read, Update, Delete

le_wagon_team = ['Sasha', 'Yann', 'Douglas']
# index             0        1        2

# how do we count with arrays?
# With reference with an index
# ⚠️ In an array, index starts at ZERO


## Read

# Theory: array[index]
le_wagon_team[1] # => 'Yann'
le_wagon_team[0..1] # => ['Sasha', 'Yann']
le_wagon_team[-1] # => 'Douglas'

# advanced read
le_wagon_team.first # first element
le_wagon_team.last # last element


## Create
# Theory: array.push(element_to_add)
le_wagon_team.push('Devin')

# Another way (more common): array << element_to_add
le_wagon_team << 'Ada'


## Update

# Replacing an element by another
# Theory: Read an element, and assign a new value
# array[index] = new_value

le_wagon_team[3] = 'Dave'


## Delete

# Two ways
# .delete(element_to_delete)
# .delete deletes ALL instances of that object

le_wagon_team.delete('Ada') # => Deletes all instance of 'Ada'

# .delete_at(index) # ⚠️ parenthesis, not []
le_wagon_team.delete_at(3)



# ======= ITERATORS =======


# Iterators are a way to 'iterate' over arrays

# most basic iterator that you already know

# .each

radiohead = ['Phil', 'Thom', 'Jonny', 'Ed', 'Colin']

radiohead.each do |band_member|
  puts "#{band_member} plays with Radiohead"
end


## Advanced iterators

# .each_with_index

radiohead.each_with_index do |member, index|
  puts "#{index + 1}) #{member} plays with Radiohead"
end


# .map

# allows to replace all elements in an array following a specific pattern

downcased_radiohead = radiohead.map do |member|
  # transformation
  member.downcase
end

# The original array is not modified
p radiohead # => ['Phil', 'Thom', 'Jonny', 'Ed', 'Colin']

# .map returns an array of the same size, with the transformation specified
downcased_radiohead # => ['phil', 'thom', 'jonny', 'ed', 'colin']


# map is called on an array
# we specify a 'transformation'
# .map returns an array of the same size, 'transformed'


# ['Phil', 'Thom', 'Jonny', 'Ed', 'Colin']
#    ||       ||      ||     ||      ||
#         transformation (downcase)
#    ||       ||      ||     ||      ||
# ['phil', 'thom', 'jonny', 'ed', 'colin']


# .select

# select elements in an array based on a CONDITION
# specify a condition when iterating

five_letter_names = radiohead.select do |member|
  # ⚠️ Condition
  member.length == 5
end

p radiohead
p five_letter_names # => ['Jonny', 'Colin']

# select is called on an array, and returns a (smaller) array of selected elements


# select is the basis behind search in web apps
# For example: Looking for apartments in Tokyo on Airbnb


# ======= ITERATORS =======

radiohead = ['Phil', 'Thom', 'Jonny', 'Ed', 'Colin']

radiohead.each do |band_member|
  puts "#{band_member} plays with Radiohead"
end

# do.... end is called a BLOCK
# |band_member| is called a block parameter
# a block is a way to pass 'some code' to a method (in that case, the .each method)

# DISCLAIMER
# Blocks are advanced concepts, you don't need to know much about them right now

# One-line block syntax for blocks:

radiohead.select { |member| member.length == 5 }
















