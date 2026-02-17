### Arrays
# Also called lists, slices, vectors, etc., in other languages
# Define an array using []

[].class # Array
[1, 2, 3] # Array of 3 integers
[2.3, 4.5] # Array of 2 floats
['yuki', 'kate', 'kim'] # Array of 3 strings
[1, 'sylvain', true, [3.4, "string"], {}] # Array of mixed data types

students = ['yuki', 'kate', 'kim', 'cyprien', 'emily']
# index       0       1       2        3          4
# reverse    -5      -4      -3       -2         -1

# Basic operations on arrays: CRUD - Create, Read, Update, Delete

# Create
# Using [] or <<
students << 'edsel'  # Shovel operator adds an element

# Using push
students.push("alain")
p students

# Read
# Access by index
p students[0]
p students.first
p students.first(2)

p students.last
p students[-1]

# Find index of an element
p students.index("kim")

# Note: Accessing a non-existent index returns nil
p students[7] # nil
p students.index("soufiane") # nil

# Update
# Assign a new value to an index
students[0] = "alain"
students[-1] = "edsel"
p students

# Delete
# Remove by value
students.delete("alain")
p students

# Remove by index
students.delete_at(0)
p students

# Iterators: Methods to loop through arrays
# Iterator = the method used to iterate
# Iterable = the data being looped over
# The do...end is a block; method rules apply to blocks

students = ['yuki', 'kate', 'kim', 'cyprien', 'emily']

# .each method - Multiline iterator
students.each do |student|
  puts "Hello, #{student.capitalize}! Welcome to the class!"
end

# Single-line iterator
students.each { |student| puts "Hello, #{student.capitalize}! Welcome to the class!" }

# .each_with_index method
students.each_with_index do |student, index|
  puts "#{index + 1}. #{student.capitalize}"
end

# Build a new array with capitalized names using .each
capitalized_students = []
students.each do |student|
  capitalized_students << student.capitalize
end
p capitalized_students

# .map method - Creates a new array by transforming elements
capitalized_students = students.map do |student|
  student.capitalize
end
p capitalized_students

# .count - Returns the array length or count matching a condition
p students.count # Total length
k_students = students.count do |student|
  student.start_with?("k")
end
p k_students