
### Methods


### ===== ITERATORS AND BLOCKS =====

### Iterators

# An iterator is a way to go over each element of an array and 'do something'

radiohead = ['phil', 'thom', 'ed', 'jonny', 'colin']

#### .each
# .each allows us to go over each element of an array

radiohead.each do |member|
    puts "#{member.capitalize} plays for Radiohead"
end

# every other iterator can be replicated using .each


#### .each_with_index
radiohead.each_with_index do |member, index|
    puts "#{index + 1}) #{member.capitalize} plays for Radiohead"
end

# Replicating .each_with_index with .each
index = 0
radiohead.each do |member|
    puts "#{index + 1}) #{member.capitalize} plays for Radiohead"
    index += 1
end

#### .map
# .map lets us go over an array, apply a transformation to each element, and returns the transformed array

numbers = [1, 2, 3, 4]

transformed_numbers = numbers.map do |number|
    # transformation
    number * 3
end

# [ 1  ,  2   ,  3    ,  4]
# ===== Transformation (*2) ====
# [ 2  ,  4   ,  6    ,  8]

radiohead = ['tim', 'thom', 'ed', 'jonny', 'colin']

capitalized_radiohead = radiohead.map do |member|
    member.capitalize # Transformation    
end

# .map does not modify the original array


# .map
# is called on an array
# specify a *transformation* in the block
# .map *returns* an array of the same size as the original array


#### .select

# select lets us select some elements from an array, based on a specific condition passed in the block

p_members = radiohead.select do |member|
    member.chars.first == 't' # condition
end

# .select
# is called on an array
# we specify a *condition* in the block
# select returns an array with all the elements for which the condition is true


# For each iterator, be careful:
# Waht are they called on
# What to write in the block
# What do they return


#### Blocks

# a block starts with 'do' and end with 'end'
# OR is between { }

# multi-line syntax
capitalized_radiohead = radiohead.map do |member|
    member.capitalize # Transformation    
end

# one-line block syntax
cap_radiohead = radiohead.map { |member| member.capitalize }

p capitalized_radiohead
p cap_radiohead


### ===== METHODS =====

def beautified_name(first_name, last_name)
    cap_first = first_name.capitalize
    cap_last = last_name.capitalize
    full_name = cap_first + ' ' + cap_last

    return full_name
end

puts beautified_name('sylvain', 'pierre')

# puts 'what is your first name?'
# first = gets.chomp

# puts 'what is your last name?'
# last = gets.chomp

# puts beautified_name(first, last)


# Developers are LAZY
# They hate repeating themselves
# Methods let us store some code, to be able to re-use it later

# Understand the difference between method *definition* and *calling* the method


# Conventions about Methods:
# - method name is always written in lower_snake_case
# - ? methods always return true or false (.odd?, .even?, .include?)
# - ! methods are called destructive or dangerous: they modify the object they are called on


### ===== LIVECODE =====

# DISCLAIMER: This is an ADVANCED livecode

# Scrape prices from the Rakuten website
# 1) Be able to open a webpage
# 2) understand the structure of an HTML file
# 3) find the elements in the HTML that include prices
# 4) extract those elements

# Ruby gem (=library) to be able to open a web page
require 'open-uri'

# Ruby gem to be able to parse (break down) the HTML
require 'nokogiri'

puts 'What prices would you like to check on Rakuten?'
print '> '
keyword = gets.chomp

# opening Rakuten page and storing the HTML code
html = open("https://search.rakuten.co.jp/search/mall/#{keyword}/").read

# Parsing the huge string we got from Rakuten
parsed_html = Nokogiri::HTML(html)

# Search in the HTML the elements that include prices
puts "These are today's prices for #{keyword}:"
prices = parsed_html.search('.price .important').first(10).map do |element|
    element.text.strip
end

