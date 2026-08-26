### Arrays

# Recap: Arrays
[].class
[1, 2, 4]
["string1", "string2", "string3"]

students = ["Simon", "Lance", "Vu", "Prabesh", "Emily"]
# index         0        1       2        3        4
# reverse idx  -5       -4      -3       -2       -1

# CRUD
# Create
# Read
# Update
# Delete

# Create (adding)
new_array = []

# shovel operator <<
# array << new_element
# students << "Yohei"

# push method (.push)
# array.push(element)
# students.push("David")
# p students

# Read
# array[index]
p students[0]

# .first
p students.first
p students[4]

p students[-1]
p students.last

# use a range to get a slice of the array
# p students[0..2]

# .index(element)
p students.index("Yohei")

p students[10]
p students.index("Soufiane")

# Update
# array[index] = new_value
students[2] = "Helen"

# Delete
# array.delete(element)
# students.delete("Helen")

# array.delete_at(index)
# students.delete_at(2)
p students


students = ["Simon", "Lance", "Lionel", "Helen", "Prabesh", "Emily"]

# Iterators
# array.iterator do |element|
#   repeat something using the element
# end

# .each
students.each do |name|
  puts "Hello, #{name} welcome to today's course!"
end

# one-liner
students.each { |name| puts "Hello, #{name} welcome to today's course!" }


prices = [2, 6, 4, 5, 4]

with_tax = []
prices.each do |price|
  with_tax << price * 1.08
end

p with_tax

# .map
with_tax = prices.map do |price|
  price * 1.08
end

p with_tax

# .sum
total = with_tax.sum
p total

# .select
l_students = students.select do |student|
  student[0] == "L"
end

p l_students


# Pseudo code
# Disclaimer: this is a bit advanced.

# A scraper to collect prices from Rakuten:
# 1. be able to open a web page using Ruby
# 2. understand the HTML structure
# 3. search for the elements that represent a price
# 4. extract those elements

# import a module / package / gem to open websites
require "open-uri"

# import a module / package / gem to parse HTML
require "nokogiri"

# Open the webapage using ruby
html = URI.open("https://search.rakuten.co.jp/search/mall/pillow").read

# Pstse the HTML into ruby object
# parsing is the action of transforming a data type into another
parsed_html = Nokogiri::HTML(html)

# Play with the result since now ruby can understand the html string
# Search for the elements we are looking for
parsed_html.search(".price--3zUvK").each do |price|
  puts price.text.strip
end
