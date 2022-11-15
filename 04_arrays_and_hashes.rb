
### Arrays

### === Recap / New stuffs ===

# Array is delimited with square brackets
puts [].class # Empty array

# Array is a collection / list of elements
p [1, 2, 3] # array of 3 Integers
p ['sasha', 'yann', 'douglas'] # Array of 3 Strings

# We can store "anything we like"
p [1, 'sylvain', true, 1.3]
# But in reality, we never really do that

p [[1, 2, 3], [3, 4, 5], [5, 6, 7]] # An array of 3 arrays, each of them are arrays of 2 Integers

# ⚠️ In an array, we start counting from *index*... ZERO
['sasha', 'sylvain', 'douglas']
#   0         1          2


# ==== CRUD for Arrays ====

# CRUD stands for Create Read Update Delete
# It's the 4 basic operations you can do with a database

le_wagon_team = ['sasha', 'yann', 'douglas', 'sylvain']

### Read operation
# How to read one element from an array
# Theory: array_name[index]
puts le_wagon_team[2]
puts le_wagon_team.first
p le_wagon_team[0..2]
puts le_wagon_team[-1]

### Create
# Lets us add an element at the end of the array
# array_name << element_to_add

le_wagon_team << 'declan'
# p le_wagon_team
le_wagon_team.push('esther')
# p le_wagon_team

### Update
# Updating one existing element of an array
# array_name[index] = new_element
le_wagon_team[1] = 'ulysse'
# p le_wagon_team

### Delete
# Two ways to delete:
# based on the actual value: 
# array_name.delete(element_to_delete)
# based on the index:
# array_name.delete_at(index_to_delete)

le_wagon_team.delete('declan')
# ⚠️ .delete deletes ALL instances of the same element

le_wagon_team.delete_at(4)

# CRUD for arrays is super important, you should know this by ❤️


# ==== ITERATORS ====

# Iterating over an array with a for loop
for member in le_wagon_team
    puts "#{member} works at Le Wagon Tokyo"
end

# NOW, FORGET ABOUT THAT
# The ruby way to iterate over an array is with iterators

### Iterators

# The most basic iterator is .each
# We can replicate any other iterator using .each

le_wagon_team = ['sasha', 'yann', 'douglas', 'sylvain']

# .each
le_wagon_team.each do |team_member|
    # Code will run at each iteration
    puts "#{team_member.capitalize} works for Le Wagon"
end

# More advanced iterators

# .each_with_index

le_wagon_team.each_with_index do |team_member, index|
    puts "#{index + 1}) #{team_member.capitalize} works for Le Wagon"
end

# .map
grades = [2, 6, 7, 4, 5]
# map is an iterator that will *return* an array of the same length as the initial array, with each element modified following the operation specified

double_grades = grades.map do |grade|
    # transformation
    grade * 2
end

# [1,    2,    3,    4,     5]
####    TRANSFORMATION (for ex, *2) ######
# [2,    4,    6,    8,     10]


# .select
# select lets us select some elements from an array, based on a condition
le_wagon_team = ['sasha', 'yann', 'douglas', 'sylvain']

s_members = le_wagon_team.select do |team_member|
    # condition
    team_member.chars.first == 's'
end

# Let's imagine we're using Airbnb, and selecting a destination.
# .select is the oiriginal operation that's being run.


### Blocks

grades.map do |grade|
    grade * 2
end

# - everything between do...end is called a block
# - In that specific example, *grade* is called a block parameter
# A block is a way to pass code to a method

### One-line block syntax
# Use this syntax when your code doesn't go over 80 characters
grades.map { |grade| grade * 2 }
