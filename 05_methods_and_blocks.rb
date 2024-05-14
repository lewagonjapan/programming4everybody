
### Methods
# variables => a way we have to store data
# methods / function allow us to store a chunk of code or logic to be able to reuse it.

# DRY
# Do not Repeat Yourself

first_name = "soufiane"
last_name = "ezzine"

f_name = first_name.capitalize
l_name = last_name.capitalize
full_name = "#{f_name} #{l_name}"
p full_name

# DEFINE a method
# define a method using def key word and close it with an end
# methods are alway lower_snake_case
# method may or may not have parameter ( parameters are like variables or placeholders)
# A method will always return the last line
# The return keyword is optional

# methods that end with the ( ? ) will always return a boolean ( true / false )
# methods that end with th ( ! ) will change the original data ( destructive methods)
def beautiful_name(first_name, last_name)
  cap_fname = first_name.capitalize
  cap_lname = last_name.capitalize
  "The #{cap_fname} #{cap_lname}" # a method will alway return the last line
end

# USE / CALL the method
# Here we are calling the method
# I pass arguments to my method ( arguments represent real data)
beautiful_name("flavien", "sciortino")
beautiful_name("yuta", "asakura")
beautiful_name("soufiane", "ezzine")


def is_even?(number)
  number % 2 == 0
end

is_even?(4)
is_even?(56)
is_even?(99)
is_even?(0)


# NON destructive method
name = "soufiane"
cap_soufiane = name.capitalize

p cap_soufiane # "soufiane"
p name  # "soufiane"

# DESTRUCTIVE method ( it will change the name variable)
name = "soufiane"
cap_soufiane = name.capitalize!
p name # Soufiane
p cap_soufiane # Soufiane

# ITERATORS
# Array methods

students = ["pierre", "ali", "yuta", "svitlana", "anamol"]

# syntax
# array.iterator do |element|
# logic
# end

# single line syntax
# array.iterator { |element| do somehting }

# .each
students.each do |student|
  "#{student.capitalize}"
end

# .each_with_index
students.each_with_index do |student, index|
  "#{index + 1}- #{student.capitalize}"
end

# this block of code the .map under it will produce the same result.
list = []
students.each do |student|
  list << student.capitalize
  # list.push(student)
end
# p list

# .map
# p students
capital_s = students.map do |student|
  student.capitalize
end
p capital_s

# anbother example of map
numbers = [2, 3, 4, 6]

doubles = numbers.map do |number|
  number * 2
end
p doubles

# .select
a_names = students.select do |student|
  student[0] == "a"
end
# a_names = students.select {|student| student[0] == "a"}

# .count
four_names = students.count do |student|
  student[0] == "a"
end
# p four_names

### ===== LIVECODE =====

# DISCLAIMER: This is an ADVANCED livecode

# Scrape prices from the Rakuten website
# 1) Be able to open a webpage
# 2) understand the structure of an HTML file
# 3) find the elements in the HTML that include prices
# 4) extract those elements

# import a gem to be able to open a web page
require 'open-uri'

# require / import nokogiri gem to parse and search the html file
require 'nokogiri'

# open rakten page and store the HTML code as a string
html = URI.open("https://search.rakuten.co.jp/search/mall/pillow/").read

# parse the HTML string into objects i can work with and search inside
parsed_html = Nokogiri::HTML(html)

# Search in the HTML the elements that include prices
prices = parsed_html.search(".price--OX_YW").first(10).map do |element|
  # I transform each element of the array into its text but stripped
  element.text.strip
end

# p prices
# ========================================================
# ANOTHER DISCLAIMER YOU DON'T HAVE TO GO BEYOND THIS POINT
# ========================================================

# remove the "," and replace it with "" ( nothing)
# split the thring at (円) sign and get the first element ( split returns an array )
# transform it into an integer
# get the sum of all the prices that are in my array ( returned by map )
# devide by the number of elements in the prices array
average_pillow_price = prices.map {|p| p.gsub(",", "").split("円")[0].to_i}.sum / prices.count


p average_pillow_price