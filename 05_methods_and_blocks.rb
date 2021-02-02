
### Iterators (Blocks)

le_wagon = ['Sasha', 'Yann', 'Douglas', 'Trouni', 'Sylvain']

# 1) .each
le_wagon.each do |staff|
  "#{staff} works at Le Wagon"
end

# .each is the most basic iterator
# We can 'reproduce' every other iterators using .each


# 2) .each_with_index
le_wagon.each_with_index do |member, index|
  "#{index + 1}) #{member}"
end

# ⚠️ two block parameters, 'member' and 'index'


# 3) .map

# .map is called on an array
# *returns* an array OF THE SAME SIZE
# Applies the transformation in the block

# Example 1:
le_wagon_enhanced = le_wagon.map do |member|
  # Specify the transformation
  "#{member} works at Le Wagon"
end

# Example 2:
numbers = [1, 2, 3, 4]

double_numbers = numbers.map do |number|
  number * 2
end


# 4) .select

le_wagon = ['Sasha', 'Yann', 'Douglas', 'Trouni', 'Sylvain']

# .select takes a condition, returns a 'selected' array when the condition is true

le_wagon_s = le_wagon.select do |member|
  # condition
  # when true, will be selected
  member.chars.first.upcase == 'S'
end

p le_wagon_s # => ['Sasha', 'Sylvain']


### Summary for iterators.
# Remember:
# 1) What goes in the block?
# 2) What does it return?

# =========

### Blocks

# What is that?? do...end

# It is called a block
# elements within || are called block paramaters
# A block is a way to pass 'some code' to a method

# =========

### Methods

# DEFINING a method
def full_name(first_name, last_name)
  full_name = first_name.capitalize + ' ' + last_name.capitalize
  return full_name
end
# first_name and last_name are called PARAMETERS
# A method should 'return' something (not print or puts)

# Let's use that newly defined method

puts 'What is your first name?'
first = gets.chomp

puts 'What is your last name?'
last = gets.chomp

# Here, we are CALLING the method:
puts full_name(first, last)

# first and last are called ARGUMENTS


# We can also call the method with actual values:

puts full_name('riya', 'mahajan')


# In short, a method is a way to store some lines of code

# Remember the method signature:
# Name of the method (full_name)
# How many paramaters, and what type (2 parameters, Strings)
# What does the method return (Returns a String)


# ===========

# Livecode:

# Get a list of prices form Rakuten website
# Prices for the Switch

# ⚠️ Disclaimer - Quite advanced

require 'open-uri' # Allows me to open a webpage
require 'nokogiri' # 'Understand' the HTML code

# Opening the webpage, and turning it into a HUGE string
html = open('https://search.rakuten.co.jp/search/mall/switch/?v=2').read

# Turn my string into a 'searchable' list
list = Nokogiri::HTML(html)

prices = []
# Search through HTML for specific classes: .price and .important
list.search('.price .important').each do |element|
  # Storing each price into a 'prices' array
  prices << element.text
end

p prices # => list of prices

# ==========

# Q&A

# Q1 - What does it take to be good at coding?

# Focus
# Attention to details


# Q2 - What does that 'do' do?

# 'do' is just a syntax keyword
# Everything between 'do' and 'end' is called a block

le_wagon = ['Sasha', 'Yann', 'Douglas', 'Trouni', 'Sylvain']

le_wagon.each do |staff|
  "#{staff} works at Le Wagon"
end
# The block starts at 'do' and finishes at 'end'


# Q3 - What is <<?

# << is the 'shovel' operator, it allows  you to add an element to an array
array = [1, 2, 3]
array << 4 # array.push(4) is exactly the same

# => array contains [1, 2, 3, 4] now


# Q4 - What is p?

# p is a shortcut to inspect an element, equivalent to:
# object.inspect

# =============

### Homework

# The most popular coding challenge ever, FizzBuzz:

# Define a method that takes an Integer as parameter,
# and returns an array, with all numbers from 1 to that Integer, and:
# - Replace multiples of 3 by Fizz
# - Replace multiples of 5 by Buzz
# - Replace multiples of 15 by FizzBuzz

# Example:

def fizz_buzz(integer)
# ????
end

fizz_buzz(15)
# Should return
# => [1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz]

# Wikipedia:
# https://en.wikipedia.org/wiki/Fizz_buzz



