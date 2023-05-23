
### Arrays

[] # an empty array
[1, 2, 3] # array of numbers
[1, 2, 3] # array of strings

students = ['javon', 'alan', 'gary', 'utibori']
# index        0        1       2        3
# reverse     -4       -3      -2       -1

# CRUD => Create Read Update DELETE
# Basic operations that we can do to data (array, hashes ...)

# CREATE

# Create an empty array
array = []

# two main ways to add elements to an array
# array << element
students << 'kostas'
# # push method
students.push('oliver')


# READ
# array[index]
puts students[3]
puts students[-1]
puts students[0..2]
puts students.index('kostas')


# UPDATE
# array[index] = new_value
students[0] = 'soufiane'
students[-1] = 'soufiane'


# DELETE
# array.delete(element)
students.delete('javon')
array.delete_at(index)
students.delete_at(-1)
last = students.pop
# p students

#### ITERATORS ####

## Iterators are tools that we have at our dispale to loop over collections
## of data and do something

students = ['javon', 'alan', 'gary', 'utibori']

## syntac
# array.iterator do |element|
  # do something with the element
  # do something elese with element
# end


capitalized_name = []

students.each { |student| capitalized_name << student.capitalize }

students.each_with_index do |student, index|
  # puts "#{index + 1}- #{student}"
end

sentence_array = students.map do |student|
  # 125
end

numbers = [5, 6, 7]
puts numbers.sum
