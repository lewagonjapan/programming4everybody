
### Arrays

# new_array = Array.new(3, 'text')

## CRUD

# - Create
# array.push(element)
# student.push('iRIS')

# array << element
student << 'iRIs'

# p student

# - Read

# read an element at specific index
# array[index]
p student[0]
p student[-1]

# reading multiple elements with their index

# array[range]
p student[1..2]
p student[..2]
p student[-3..]

# array.index(element)
p student.index('iRIs')

# - Update

# array[index] = element
student[0] = 'RoDriGo'
# p student

# - Delete

# delete by element
# array.delete(element)
student.delete('alex')

# delete by Index
student.delete_at(1)

# p student
### Theory

# [].class
students = ['anDrew', 'sergIO', 'Alex', 'MoToKi']
# index        0         1        2        3
# index      -4         -3        -2        -1

## BLOCK

# everything between 'do' and 'end'
# everything between { and }

## Iterators

array.method do |parameter|
  # Do this block of code for EACH element
end

# .each

# students.each { |student| p student }

students.each do |student|
  puts student
end

p students
# .each_with_index

students.each_with_index do |student, index|
  puts "#{index + 1} - #{student}"
end

# return you an array with the SAME size
# but each of the element, you will apply the block
new_students = students.map do |student|
  student.capitalize
end

# p new_students
# p students

# select
a_students = students.select do |student|
  # condition to this should return true / false
  student.downcase[0] == 'a'
end

# p a_students

## other methods

# .length

# p a_students.length

# .each_slice
# (1..10).each_slice(3) { |element| p element }
