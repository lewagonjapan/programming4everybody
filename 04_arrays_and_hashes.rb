### Arrays

students = ["carl", "lopez", "toby", "stamati", "stuart"]
# indexes     0        1        2        3         4

# CRUD
# Basic operations that can be used to manipulate data

# CREATE
# shovel operator <<
# array << element
students << "youssef"

# push method
# array.push(element)
students.push("damien")

# READ
# array[index]
# read at specific index
students[0]
students[1]

# read last element of an array
students[-1] # return the last element of an array

# first 3 elements
# array[range]
students[0..2]

# find the the index of an element in an array
# array.index(elemenet)
students.index('youssef')
students.index('soufiane')

# UPDATE
# array[index] = new_value
students[0] = "mason"
students[-1] = "soufiane"


# DELETE
# array.delete(element)
students.delete("soufiane")

# array.delete_at(index)
students.delete_at(0)
students


# Iterators / Array methods
# Methods built in ruby to make looping / iterating over arrays and working with them easy
# There are many useful method (you can see the ruby documentations for all the available methods)

students = ["carl", "lopez", "toby", "stamati", "stuart"]

# .each
# array.each do |name|
#   do something
# end

# Block do ... end
# method without a name (anonymous method)

# multiple line syntax
students.each do |s|
  # puts "#{s} is a good student!!!"
end

# single line syntax
students.each { |student| "#{student} is a good student!!!" }

# .each_with_index
students.each_with_index do |student, index|
  # puts "#{index + 1} - #{student.capitalize}"
end

# .map
numbers = [2, 3, 5, 6]


# result = []
# numbers.each do |number|
#   result << number + 1
# end
# p result
squares = numbers.map do |number|
  number * number
end

# p squares


# .select
s_students = students.select do |student|
  student[0] == 's'
end
s_students

# .count
p students.count

# s_names = students.count do |student|
#   student[0] == 's'
#   end

s_names = students.count { |student| student[0] == 's'}

p s_names















