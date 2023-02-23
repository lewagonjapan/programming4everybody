### Iterators
# iterators are tools given by/ nuilt in ruby to loop over data
# It allows to go over each element of the array (data) and do something to it

students = ['richard', 'racheal', 'simone', 'joyce', 'chris']

# Iterator syntax
# array.iterator do |element|
#   # do something with that element
# end

## .each
# Loops over the array and does something with each element
students.each do |student|
  # puts "#{student.capitalize} is taking programming for everybody"
end

## .each_with_index
# does the same thing as .each but also gives us access to the index of elements
students.each_with_index do |student, index|
  # puts "#{index + 1} - #{student.capitalize} is taking programming for everybody"
end

## .map
# map iterates over each element of the array, and replaces it with the last line

numbers = (1..10).to_a
square = numbers.map do |number| # => returns a new array
  number * number
end
p square

# .select
# filters an array and keeps the element that meet the criteria
students = ['richard', 'racheal', 'simone', 'joyce', 'chris']
r_students = students.select do |student|
  student[0] == 'r'
end

p r_students

### Blocks
# Is defined between do ... end

# multiline if my block has multiples lines
students.each do |student|
  puts student
end

# single line block: if my block only has one line of code
students.each { |student| puts student }
