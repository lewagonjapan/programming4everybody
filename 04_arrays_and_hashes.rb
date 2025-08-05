### Arrays
[].class
["str1", "str2"] # array of strings
[1, 3, 4] # array of integers
age = 32
["soufiane", 214, true, [23, 34], age]
[["soufiane", 34], ["carl", 30]]

# Array
# Arrays, also called lists, vectors, slices ... in other programming languages
# They are a list of elements usually elements of the same datatype
# Each element in an array can be identified by an index
# Arrays in Ruby are zero indexed (indexing start at 0)

students = ["Carl", "Julia", "Raphael", "Mark", "Mike"]
# index        0       1        2         3
# reverse idx  -4     -3        -2       -1


# CRUD
# Crud operations are the basic operations that can be applied to data
# Originated from the database data manipulations
array = [] # created an array

# Create
# Shovel operator << ( always adds at the end of the array)
# Array << element
students << "Chantal"

# .push method
# array.push(element) ( always adds at the end of the array)
students.push("Charles")

# .unshift() (add element at the beginning of the array)
# array.unshift(element)
students.unshift("Nathan")

# Read
# array[index]
students[0]

students[-1]
students[-2]

# array.first
students.first
# array.last
students.last

# array[range]
students[0..2]
students.first(2)

# read the index of an element
# array.index(element)
students.index("Carl") # the string is case sensitive

# Update
# Array[index] = new_value
students[0] = "Dan"
students[-1] = "Frederico"


# Delete
# array.delete(element)
students.delete("Carl")
# array.delete_at(index)
students.delete_at(-1)

p students[10] # When trying to access an element that does not exist nil is returned
p students.index("something") # nil

# array methods

students = ["Carl", "Julia", "Raphael", "Mark", "Mike"]

# .each # loops over an array of element and does something
# array.each do |element|
#
# end
students.each do |x|
  # puts "#{x} is a good student"
end

# students.each { |student| puts ... }

# .each_with_index # Does the same thing as .each but gives access to the index as well
students.each_with_index do |student, index|
  # puts "#{index + 1}. #{student}"
end

# .map # creates a new array and transforms all the element in the array using the block logic
# upcased = []
# students.each do |student|
#   upcased.push(student.upcase)
# end
#
# p students
# p upcased

upcased = students.map do |student|
  student.upcase
end

p students
p upcased

# .select # filters the array by removing all the element that do not return true to the blocks logic
m_student = students.select do |student|
  student[0] == "M"
end

p m_student

# Block
# everything between the do ... end
# whatever is between the pipes is called a parameter ( like method definition )
# it will alway return the last line of code ( just like a method )

















