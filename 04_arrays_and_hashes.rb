### Arrays
# [].class
#
students = ['alejandra', 'rikka', 'mae', 'heinrich', 'nishan', 'mei']
# index          0            1      2        3          4        5
# reverse      -6           -5      -4      -3         -2       -1

# CRUD

# Create
# array << element
students << "glen"

# array.push(element)
students.push("jonathan")

# Read
# array[0]
p students[0]
p students[-1]

# array[range]
students[0..2]

# array.index(element)
p students.index('rikka')

# try to read an element at an index that doesnt exist
p students[10] #=> nil
p students.index("something") #=> nil

# Update
# array[index] = new_value
students[0] = "yuzu"
students[-1] = "glen"

# Delete
# array.delete(element)
students.delete("mae")
# array.delete_at(index)
students.delete_at(-1)

p students

students = ['alejandra', 'rikka', 'mae', 'heinrich', 'nishan', 'mei']

# syntax
# array.iterator do |element|
#   # Do something with that element
# end

each_student = students.each do |student|
  name = student
  puts "#{name.capitalize} is a good student!"
end
p each_student

# short hand to write a one line blocks
students.each { |student| puts "#{student.capitalize} is a good student!"}

# .each_with_index
students.each_with_index do |student, index|
  # puts "#{index + 1} - #{student}"
end

# I want to create a new array with capitalized names
capitalized = []
students.each do |student|
  capitalized << student.capitalize
end

# p capitalized

# .map
capitalized = students.map do |student|
  # student.capitalize
end

# p capitalized

# .select / .filter filters the array leavng only element that meet the criteria
m_students = students.select do |student|
  # student[0] == 'm' #=> boolean true / false
end

# p m_students

# .count
m_students = students.count do |student|
  # student[0] == 'm'
end

# p m_students

students.size
students.length


# some string operations
str = "Glen"
str[-1] = "F"
p str

