
### Methods && Blocks

# Block
# A block is our do...end

# multi line syntax
# array.each do |element|
#   # do something to that element
# end

# single line syntax
# array.each { |element| 'do something to that element' }


# An iterator is a way to go over EACH element on an array and 'do something'
students = ['michael', 'shiori', 'paloma', 'marco', 'sarah', 'emily']

# .each goes over the indivual element in the array (just gives the original array back)
students.each do |student|
  # "#{number}.) #{student.capitalize} is taking programming for everyone!"
end

# inside of the |pipes|, we have our parameters
students.each_with_index do |student, index|
  "#{index + 1}.) #{student.capitalize} is taking programming for everyone!"
end

# build a new array using .each....
capitalized = []
students.each do |student|
  capitalized << student.capitalize
end

# to BUILD a NEW array we use .
# .map -> iterate over each thing, and places the LAST LINE inside of a NEW array
capitalized = students.map do |student|
  "sarah"
  student.capitalize  # will take the last line inside of the block
end
# p capitalized

students.select do |student|
  student[0] == 'm'
end

m_names = students.count do |student|
  student[0] == 'm'
end

# .each -> returns the original array
# .map -> builds a new array
# .select -> filter the original array into a new array
# .count -> integer (for which is true)


# METHODS
# a block of reusable code which returns a dynamic value
# DRY - Don't Repeat Yourself

# define a method -> def method_name end
# method signature -> 1. name? 2. take any arguments? 3. what does it return?

# you dont' need the word return. In Ruby, the last statement will be returned

# first_name and last_name are PARAMETERS -> placeholders
def beautify_name(first_name, last_name)
  cap_first = first_name.capitalize
  cap_last = last_name.capitalize
  # return cap_first + " " cap_last
  "#{cap_first} #{cap_last}" # will return this line bc it's last
end

puts beautify_name('michael', 'smith')
puts beautify_name('sarah', 'smith')
puts beautify_name('emily', 'smith')

# Naming conventions
# variables and methods -> lower_snake_case
# Class -> UpperCamelCase

# 12.even? => return a boolean
# 12.even? => return a boolean
