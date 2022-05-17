
### ===== ARRAYS =====

### Intro about Arrays

# Arrays are delimited by square brackets
[].class  # => Array
[1, 2, 3] #  => array of 3 Strings

# Ruby doesn't care about the type of objects you store in an array
[1, 'le wagon', 1.3, true]
# Most of the time, all the elements are of the same class / data type

### In an Array, we start counting from 0
#  The position of an element is called its index
['sasha', 'douglas', 'yann', 'sylvain']
#   0         1         2        3


### CRUD for Arrays

# CRUD stands for Create Read Update Delete
# CRUD are the basic operations you can do with a database

le_wagon_team = ['sasha', 'douglas', 'yann', 'sylvain']

### Read
# Accessing an element in an array
#Theory: array[index]

puts le_wagon_team[1]
p le_wagon_team[0..2]
puts le_wagon_team[-1]

puts le_wagon_team.first
puts le_wagon_team.last


### Create
# Adding a new element in an array
# Theory: array.push(item_to_add) OR array << item_to_add
le_wagon_team.push('james')
p le_wagon_team

le_wagon_team << 'aime'
p le_wagon_team


### Update
# Changing one element in an array
# Theory: array[index_to_update] = new_item
le_wagon_team[1] = 'tim'
p le_wagon_team


### Delete
# Removing items from an array
# Theory:
# array.delete(item_to_delete)
# array.delete_at(index_to_delete)

le_wagon_team.delete('tim')
p le_wagon_team

le_wagon_team.delete_at(-1)
p le_wagon_team

# Two dimensional arrays
array = [[1, 2] ,[3, 4] ,[5, 6]] # Array of 3 arrays
puts array.last  # => [5, 6]
