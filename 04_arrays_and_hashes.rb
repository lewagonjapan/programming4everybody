
### Arrays
[].class # Array
[1, 2, 3] # Array of numbers
["student1", "student2", "student3"] # Array of strings

students = ["Sandrine", "Taka", "Amanda", "Carl", "Marina"]
# index         0          1        2        3        4
# index        -5         -4       -3       -2       -1

# CRUD operation on arrays

# Create / Add to array
[] # Array litteral to create and empty array

# shovel operator <<
# array << element
students << "Monika"

# array.push(element)
students.push("Hermione")

# array.unshift(element) adds element at the beginning
students.unshift("soufiane")

puts students

# Read
# array[index]
# read the first elemenet of an array
puts students[0]
#
# last element of an array
puts students[-1]

# get the index of an element
# array.index(element)
puts students.index("Taka")

# get slice of my array
# array[range]
puts students[0, 2]
puts students[0..2]

# Read an element outside the range
p students[10] # nil
p students.index("soufiane")

students = ["Sandrine", "Taka", "Amanda", "Carl", "Marina"]
# Update
# array[index] = new_value
students[0] = "Owen"
# students[-1] = "soufiane"

# Delete
# array.delete(element)
students.delete("Owen")

# array.detele_at(index)
students.delete_at(1)
# puts students


# Array Methods
students = ["Sandrine", "Taka", "Amanda", "Carl", "Marina", "Mike"]
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# .each
students.each do |student|
  puts student
end

total = 0
numbers.each do |number|
  total += number
end

puts total

# .sum returs the sum of an array of integers / floats
# puts numbers.sum

# .map

# to create an new array using .each
upcased = []
students.each do |student|
  upcased.push(student.upcase)
end
p upcased

# .map allows me to create a new array using the returned value of the block
upcased = students.map do |student|
  student.upcase
end

p students
p upcased

# .select filters the array and returns a new array with only
# the elements that return true from the provided condition
m_students = students.select do |student|
  student[0] == "M" # Condition returns a boolean
end

n_num = numbers.select { |num| num >= 5 }
p n_num

p m_students

# Block
# defined with a do ... end
# a block may or may not be defined with parameters
# a block will "return" the last line
# A block might be tought of as method without a name that exists only for the purpose of the
# method

# Livecode
# Disclaimer /!\ this is and advanced live

# Building a scraper

# Pseudocode
# Be able to open a webpage ( download the html file )
# Understand the structure of the HTML file
# Search fot the elements that I am targeting in the page
# Extract those elements

# Import a gem / package to be able to open a webpage
require 'open-uri'

# import a gem / package to parse and read the html
require 'nokogiri'

# Open rakuten page and read the html
html = URI.open("https://search.rakuten.co.jp/search/mall/pillow/").read

# Parse the html to  ruby objects
parsed_html = Nokogiri::HTML(html)

# Search the parsed html for all the elements that have the class ".price--OX_YW"
prices = parsed_html.search(".price--OX_YW").map do |price|
  price.text.strip
end

p prices

