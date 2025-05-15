### Arrays
### === Recap / New stuffs ===

# array is delimited with square brackets
[].class

# Arrays are a collection / list of elements
[1, 2, 3] #  Array of integers
["luis", "youssef", "paul"] # array of strings

[1, "sylvain", true, 0.4]
[[1, 2, 3], [4, 5 , 6], [7, 8, 9]]

# each eleemnt of the array has an address ( index )
students =       ["luis", "youssef", "paul", "diana"]
# index             0         1        2        3
# reverse indexes  -4        -3       -2       -1

# CRUD operations
# 4 basic operations that can do to data
students = ["luis", "youssef", "paul", "diana"]

# Read
# array[index]
students[0]

# get the first element (s) in an array
students.first(2)

# get last element in my array
students[-2]
students.last

# get second and third element using a reange
students[1..2]

# get the index of an element in an array
# array.index(element)
students.index("diana")


# if you try to read an element with an index that does not exist
students[10] # nil
students.index("soufiane") # nil

# Create
# [...]
students = ["luis", "youssef", "paul", "diana"]
# shovel operator
# array << element
students << "alonzo"

# push method
# array.push(element)
students.push("lan")

# array.unshift # add at the beginning of an array
students.unshift("soufiane")

# Update
# array[index] = new_value
students[-1] = "jennifer"
students[0] = "jennifer"

# Delete
# array.delete(element)
#.delete will delete all the instances of the element
students.delete("youssef")

# students.delete_at(index)
students.delete_at(0)

# array.shift
students.shift
# p students

# CRUD for arrays is super important, you should know them by heart


# Iterators

students = ["luis", "youssef", "paul", "diana", "giada"]

# for student in students
#   puts "#{student} is taking P4E!"
# end

# .each
# array.each do |element|
# end

# if I want to loop over an array of element and do something
students.each do |s|
  puts "#{s} is taking P4E!"
end

# .each_with_index
# if I want to loop over an array of elements and get access to their index
students.each_with_index do |student, index|
  puts "#{index + 1}) #{student} is taking P4E!"
end

p grades = [2, 3, 6, 4, 9]

new_grades = []
grades.each do |grade|
  new_grades.push(grade + 1)
end

# p new_grades

# if I want to create a new array from another array and transform the elements in some whay
# .map

new_grades = grades.map do |grade|
  grade * 2
end

p new_grades

students = ["luis", "youssef", "paul", "diana", "giada", "donna" ]
captalized = students.map do |student|
  student.capitalize
  student[0]
end
p captalized


#.select
# Filters or selects elements from an array that meets the condition defined in the block
d_names = students.select do |student|
  student[0] == "d"
  # student.chars.first == "p"
end

p d_names

# .count
# If count is not given a block it will return the length of the array
p counter = students.count

# If given a block, count will count the element in the array that meet the condition defined in the block
counter = students.count do |student|
  student[0] == "d"
end

# p counter

# blocks
grades.map do |grade|
  grade * 2
end

# - Everything between the do ... end is called a block
# - *grade* is called a block parameter ( in this specific example )
# A block is a way to pass code to a method

## One line block syntax
grades.map { |grade| grade * 2 }