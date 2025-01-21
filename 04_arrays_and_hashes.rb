
### Arrays

students = ["carl", "cassiano", "antonio", "badre"]
# indexes     0          1          2         3
# reverse.   -4         -3         -2        -1

# CRUD operations
# Are the basic operations that can be applied to data

# Create
arr = []
# array << element ( shovel operator )
students << "ryan"
# array.push(element) adds at the end
students.push("ryle")
# array.unshift(element) add at the beginng
# students.unshift("soufiane")

# Read
# array[index]
students[0] # gets first element
students[-1] # get last element
students[0..2] # get the 3 first elements

# get the index of an element
# array.index(element)
students.index("ryan") # returns index of the element

# IF I TRY TO READ AN ELEMENT THAT DOES NOT EXIST
students.index("soufiane") # nil
students[10] # nil

# Update
# array[index] = new_value
# students[0] = "max"
# students[-1] = 'soufiane'

# Delete
# array.delete(element)
students.delete("carl")
# array.delete_at(index)
students.delete_at(0)
# student.shift # removes from the begining
students.shift
students


# iterators and blocks
# do ... end is called a block

students = ["carl", "cassiano", "antonio", "badre"]
# students = ["Carl!", "Cassiano!", "Antonio!", "Badre!"]

#.each
# array.each do |element|
  # do something
# end

its_return = students.each do |student|
  # puts "#{student.capitalize}"
end
# p its_return

# one line syntax
# students.each { |student| puts "#{student.capitalize}"}

# .each_with_index
students.each_with_index do |student, index|
  # puts "#{index + 1} - #{student.capitalize}"
end

# I want to create a new array using elements from the origina array
# transform
numbers = [1, 3, 4, 6, 7]

# doubles = []
# numbers.each do |number|
#   doubles << number * number
# end
# p numbers
# p doubles

# .map
doubles = numbers.map do |number|
  number * number
end
# p doubles

names = students.map {|s| "#{s.capitalize}!" }
# p names

# .select
c_name = students.select do |student|
  student[0] != "c"
end

# .count
p students.count
c_names = students.count do |student|
  student[0] == "c"
end
p c_names