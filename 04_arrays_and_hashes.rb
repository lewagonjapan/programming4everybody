### Arrays

students = ['alajandra', 'rikka', 'mae', 'heinrich', 'nishan', 'mei']
# indexes        0           1       2        3          4        5
# reverse       -6          -5      -4       -3         -2       -1

# CRUD
# create
[].class

# two main ways to add into an array
# array << element
students << 'joe' # shovel operator
# array.push('element')
students.push(23) # push method


# Read
# array[index]
students[2]
# last element
students[-1]
# portion of the the array
students[0...2]

# get the index of an element
# array.index(element)
students.index('mei')
p students.index('something') # => nil

# p students[10]

# Updated
# array[index] = new_value
students[0] = 'hide'
students[-1] = 'hide'

# Delete
# array.delete(delete)
students.delete('rikka')
# array.delete_at(index)
students.delete_at(4)
# p students

# Iterators
# Iterators are tools I have at my disposale to loop over arrays and do something
# Go over each element in the array and do something with each element depending on the task
# also depending on which iterator I chose

# syntax

# Multiline syntax
# array.iterator do |element|
#   # do something
#   # do something else
# end

# single line syntax
# array.iterator { |element|  #do somethind }


students = ['alajandra', 'rikka', 'mae', 'heinrich', 'nishan', 'mei']

### .each

students.each do |student|
  puts "#{student.upcase}"
end

# I want to build a new array using .each
capitalized = []

students.each do |student|
  # capitalized << student.capitalize
  capitalized.push(student.capitalize)
end

p capitalized

### .map
p students

upcased = students.map do |student|
  student.upcase
end

p upcased
p students


### destructirve map
p students # => print to check the state of the array before the destructive map

upcased = students.map! do |student|
  student.upcase
end

p upcased # => the new array that the .map constructed
p students #=> the state of the students array after destructive map!

# capitalized
# p students

### .select
# filter an array and resturns a new array with only the elements
# that return true for the condition.
m_students = students.select do |student|
  student[0] == 'm'
end

### .count

# if given a block (do ... end) .count will count the number of element
# that return true for the condition in the block
number = students.count do |student|
  student[0] != 'm'
end

p number
