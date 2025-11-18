### Arrays

# An Array is a list of elements, things, or objects.
# In other programming languages, these might be called lists, slices, or vectors.
# While many languages require arrays to contain the same data type,
# in Ruby, an array can contain mixed data types.

# ------------------------------------------
# Examples of Arrays
# ------------------------------------------

[1, 3, 4, 6]             # Array of Integers
[[1, 3], [3, 5]]         # Array of Arrays (Multi-dimensional)
[{}, {}]                 # Array of Hashes
[1, "string", true, 0.4] # Mixed data types

# ------------------------------------------
# Structure & Indexing
# ------------------------------------------

students = ["sergio", "hatice", "carl", "benjamin", "benny"]

# Visualizing Indexes:
# Element:    "sergio"  "hatice"  "carl"  "benjamin"  "benny"
# Index:         0         1         2         3          4
# Reverse:      -5        -4        -3        -2         -1



# ==========================================
# CRUD (Create, Read, Update, Delete)
# ==========================================

# 1. CREATE
# -------------------------
# Use square brackets to create an empty array
empty_array = []

# Two main ways to add to an existing array:
students << "percy"       # The "Shovel" operator (commonly used)
students.push("rebecca")  # The .push method

p students

# 2. READ
# -------------------------
# Access data using the index: array[index]
p students[0]      # First element
p students.first   # Helper method for the first element
p students[-1]     # Last element
p students.last    # Helper method for the last element

# Ranges
p students[1..2]   # Returns elements from index 1 to 2

# Finding the index of a specific element
p students.index("percy")

# Accessing elements that don't exist returns nil (no error)
p students[10]         # nil
p students.index("soufiane") # nil

# 3. UPDATE
# -------------------------
# Syntax: array[index] = new_value
students[3] = "hoin"
students[-1] = "soufiane"

# Note: students.last = "soufiane" is WRONG syntax.
# You cannot assign to a method call.

# 4. DELETE
# -------------------------
# Delete by value
students.delete("carl")

# Delete by index
students.delete_at(-1)

p students

# ==========================================
# Iterators & Blocks
# ==========================================

# The code between `do ... end` or `{ ... }` is called a "Block".
# Blocks are like anonymous methods (methods without a name) passed to the iterator.
# The same rules that apply to method apply to the block (at leat most of them)

# .each
# -------------------------
# The standard way to iterate over a list.
students.each do |student|
  # puts "My name is #{student}"
end

# Inline syntax (best for single lines)
# students.each { |student| puts "My name is #{student}" }

# .each_with_index
# -------------------------
# Iterate and have access to the current index position.
students.each_with_index do |student, index|
  # puts "#{index + 1}- #{student.capitalize}"
end

# .map
# -------------------------
# .map creates a NEW array containing the results of the block.
# Unlike .each (which returns the original array), .map returns transformed data.

# The hard way (without .map):
# capitalized = []
# students.each do |student|
#   capitalized << student.capitalize
# end

# The Ruby way (with .map):
capitalized = students.map do |student|
  student.capitalize
end

# Inline version
# capitalized = students.map { |student| student.capitalize }

p capitalized

# .select
# -------------------------
# Used to filter the array. Returns a new array with elements
# that return true for the condition in the block.

b_students = students.select do |student|
  student[0] == "b"  # Selects students whose name starts with "b"
end

p b_students