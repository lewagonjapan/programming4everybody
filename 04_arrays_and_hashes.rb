
### Arrays
#
# An array is an ORDERED LIST of elements.
#
# [].class # => Array
#
# Arrays can hold:
#   [1, 2]                          # numbers
#   ['sylvain', 'doug', 'sasha']    # strings
#   [4, true, 'john', ['sasha', 3]] # mixed data types (including nested arrays)
#
# Every element has a position called an INDEX.

students = ['Louis', 'Cindy', 'Yjkam', 'Daisy']
# index:       0        1        2        3
# reverse:    -4       -3       -2       -1
#
# Positive indexes count from the start (0-based).
# Negative indexes count from the end (-1 is the last element).


# ============================================================
# CRUD OPERATIONS ON ARRAYS
# (Create, Read, Update, Delete)
# ============================================================

# ------------------------------------------------------------
# CREATE
# ------------------------------------------------------------
# Three ways to create / add to an array:
#   1. Array literal:     []
#   2. Constructor:       Array.new
#   3. Add an element to an existing array:
#        - shovel operator:  array << element
#        - push method:      array.push(element)

students << "Stella"        # shovel operator
students.push("Saad")       # equivalent using .push


# ------------------------------------------------------------
# READ
# ------------------------------------------------------------
# Access an element by its index: array[index]

# puts students[0]   # first element
# puts students[1]   # second element

p students.first     # cleaner way to get the first element

# Three equivalent ways to get the LAST element:
puts students[-1]
puts students.last
puts students[students.count - 1]

# Get a RANGE of elements (a sub-array):
p students[1..3]     # elements from index 1 to 3 (inclusive)

# Find the index of a given element:
# array.index(element)
p students.index("Yjkam")

# IMPORTANT — out-of-bounds / not-found behavior:
p students[10]                  # => nil (index doesn't exist)
p students.index("soufiane")    # => nil (element not in the array)


# ------------------------------------------------------------
# UPDATE
# ------------------------------------------------------------
# Replace the value at a specific index:
# array[index] = new_value

students[3]  = "JP"
students[-1] = "soufiane"   # negative index works here too
p students


# ------------------------------------------------------------
# DELETE
# ------------------------------------------------------------
# Two main ways to delete:
#   1. By INDEX:    array.delete_at(index)
#   2. By VALUE:    array.delete(element)

students.delete_at(-1)      # remove the last element
students.delete("JP")       # remove the element "JP"
p students


# ============================================================
# ITERATION
# ============================================================
#
# Iterating means "going through each element of a collection
# one by one." Ruby gives us several tools for this.

# ------------------------------------------------------------
# Old-style for loop (rarely used in Ruby)
# ------------------------------------------------------------
# for x in students
#   puts "Hello, #{x}!"
# end


# ------------------------------------------------------------
# Blocks
# ------------------------------------------------------------
# A block is a chunk of code between `do ... end` (or `{ ... }`).
# Most of the rules that apply to methods also apply to blocks
# (they can take parameters, return a value, etc.).
#
# Iterators are tools provided by Ruby to LOOP OVER COLLECTIONS
# (arrays, hashes, ranges, ...) using a block.


# ------------------------------------------------------------
# .each — run a block for every element (returns the original array)
# ------------------------------------------------------------
students.each do |x|
  # puts "Hello, #{x}!"
end

# Alternative one-line syntax with curly braces:
students.each { |student| puts "hello, #{student}!" }


# ------------------------------------------------------------
# .map — return a NEW array with the result of the block
#         applied to each element
# ------------------------------------------------------------

# The verbose way using .each (works, but not idiomatic):
up_students = []
students.each do |student|
  up_students.push(student.upcase)
end
# p up_students

# The clean, idiomatic way using .map:
up_students = students.map do |student|
  student.upcase
end

p up_students


# ------------------------------------------------------------
# .each_with_index — gives you both the element AND its index
# ------------------------------------------------------------
# Useful for displaying a numbered list:
#   1. Louis
#   2. Cindy
#   3. Yjkam

students.each_with_index do |student, index|
  puts "#{index + 1}. #{student}"
end


# ------------------------------------------------------------
# .select — return a NEW array with only the elements
#           for which the block returns true
# ------------------------------------------------------------
# Example: keep only students whose name starts with "S"

s_students = students.select do |student|
  student[0] == "S"
end
p s_students


# ============================================================
# WEB SCRAPING
# ============================================================
#
# Web scraping = programmatically extracting information from
# a website that wasn't designed to give us that data directly
# (i.e., no API available).
#
# ------------------------------------------------------------
# Pseudo-code (the general recipe)
# ------------------------------------------------------------
#   1. Open the website using Ruby (download the raw HTML).
#   2. Inspect the page in the browser to understand its structure
#      (which HTML tags / CSS classes wrap the data we want?).
#   3. Find the elements that contain the target data (here: prices).
#   4. Extract the text from those elements.

# ------------------------------------------------------------
# Tools we need
# ------------------------------------------------------------

# `open-uri` is part of Ruby's standard library.
# It lets us open a URL just like we would open a file,
# and `.read` returns the page's HTML as a long string.
require 'open-uri'

# `nokogiri` is a gem that parses HTML/XML.
# "Parsing" means transforming data from one format to another —
# here, turning a raw HTML string into a structured Ruby object
# that we can search through (using CSS selectors, XPath, etc.).
require 'nokogiri'

# ------------------------------------------------------------
# Step 1: Download the HTML of the target page
# ------------------------------------------------------------
# At this point, `html` is just a giant string of HTML.
html = URI.open("https://search.rakuten.co.jp/search/mall/pillow/").read

# ------------------------------------------------------------
# Step 2: Parse the HTML string into a Nokogiri object
# ------------------------------------------------------------
# Now we can query it like a structured document instead of a string.
parsed_html = Nokogiri::HTML(html)

# ------------------------------------------------------------
# Step 3 + 4: Find the price elements and extract their text
# ------------------------------------------------------------
# `.search('.price--3zUvK')` returns ALL elements whose CSS class
#  is `price--3zUvK` (this class name was found by inspecting the
#  page in the browser's DevTools).
#
# We iterate over the matches with `.each`, and `.text` gives us
# the visible text inside each element (stripped of HTML tags).
#
# NOTE: CSS class names on sites like Rakuten are often auto-generated
# and can change at any time. If this script suddenly returns nothing,
# the first thing to check is whether the class name is still correct.

parsed_html.search('.price--3zUvK').each do |price|
  puts price.text
end