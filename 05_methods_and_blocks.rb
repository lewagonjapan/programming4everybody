### Iterators

# What's an iterator?
# A way to *iterate* through an array

le_wagon = ['Sasha', 'Douglas', 'Yann', 'Sylvain']

le_wagon.each do |employee|
  puts "#{employee} works at Le Wagon Tokyo"
end
# I choose *employee*, it is called a block parameter
# .each is the most basic iterator
# we can replicate every other iterators' behavior with .each

## Other iterators

# .each_with_index
le_wagon.each_with_index do |employee, index|
  puts "#{index + 1}) #{employee} works at LWT"
end


# .map
# when called on an array, returns an array of the SAME SIZE, and applies whichever operation is inside the block

# Example 1
le_wagon_new = le_wagon.map do |employee|
  "#{employee} works at Le Wagon" # operation to perform
end

# Example 2
numbers = [1, 2, 3, 4]

incremented_num = numbers.map do |num|
  num * 10 # Will multiply each number in *numbers* by 10
end

# Replicating the behavior of .map with .each
new_le_wagon = []
le_wagon.each do |employee|
  new_le_wagon << "#{employee} works at Le Wagon"
end


# .select
# Select elements in an array based on a condition
# 1) in the block, type a condition
# 2) Return an array of same size OR smaller

# Selecting all people in Le Wagon with a name that starts with "S"
le_wagon_s = le_wagon.select do |employee|
  # This is a condition!
  employee.chars.first == 'S' # true or false
end

# This select method is behind search queries

### Blocks
# Advanced concept
# Syntax: do...end
# A block is way to pass *some code* to a method

#=============================

### Methods

# What is a method?
# A way to avoid repeating ourselves
# Keep your code DRY (Don't Repeat Yourself)

# Build a method to create a full_name

# Method Definition
def full_name(first_name, last_name)
  full_name = first_name.capitalize + " " + last_name.capitalize
  return full_name
end

# Method definition starts with the keyword *def*
# first_name / last_name are called parameters
# A method ALWAYS returns something


puts 'What is your first name?'
first = gets.chomp

puts 'What is your last name?'
last = gets.chomp

# Calling the method, and storing what it returns in a variable
beautified_name = full_name(first, last)
# When we call the method, *first* and *last* are called arguments

puts "Your full name is #{beautified_name}"

# ⚠️ Method Signature
# 1) What is the name of the method?
# 2) How many arguments do I need to pass? What data type?
# 3) What does the method return?

#=============================

### Livecode: Scraper
# ⚠️ DISCLAIMER: REALLY ADVANCED

# Let's scrape prices from Rakuten page!

require 'open-uri' # Library to open a web page
require 'nokogiri' # Library to parse some HTML

html = open('https://search.rakuten.co.jp/search/mall/switch/').read # A big text file

elements = Nokogiri::HTML(html) # big big BIG array

prices = []

elements.search('.price .important').each do |element| # Searching for specific elements in the HTML page
  prices << element.text # Filling an array with those elements
end

#=============================

# Q&A

# Q1 - Can we implement SQL queries in Ruby?
# Taught during the bootcamp
# Very advanced topic
# In short: yes it's possible


# Q2 - Did you use regex for scraping?
# I did not 🙂
# I could use some regex to get rid of unwanted characters:
element.text.gsub(/円|,/,'') # removing Yen sign and comma
# For Regex geeks:
# https://rubular.com/


# Q3 - How to insert an element at a specific index in an array?
le_wagon = ['Sasha', 'Douglas', 'Yann', 'Sylvain']
le_wagon.insert(1, 'Tomas')


# Q4 - How to remove commas from the price?
# .gsub is extremely useful for that.
# Theory: "some string".gsub(element_to_remove, element_to_replace_it_by)
cleaned_price = '24,000'.gsub(',', '') # Replacing ',' by an empty string


# Q5 - What happens if I insert an element at an index that's out of the array range
le_wagon.insert(10, 'Suwana')
# Ruby is nice, it will just fill the Array with nil values

# Q6 - Printing each item in a list of sublist
numbers = [[1, 2, 3], [4, 5, 6]]
# How to read '1' from the above array?
numbers[0][0]

# How to puts all elements:

numbers.each do |num_arrays|
  num_arrays.each do |num|
    puts num
  end
end

# ⚠️ Careful:
# This works for a few elements
# Avoid this for larger arrays of arrays
