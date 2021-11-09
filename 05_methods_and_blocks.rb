
### Methods & Blocks

# ====== ITERATORS ======

radiohead = ['thom', 'jonny', 'phil', 'ed', 'colin']
#              0        1

# Iterators are a way to 'iterate' over arrays (and other data types)
# Iterate means going through the array element by element

### The most basic iterator is: .each

radiohead.each do |member|
    puts "#{member.capitalize} plays for Radiohead"
end

# Note:
# .each doesn't return anything
# We can reproduce the behavior of every other iterator using .each


### .each_with_index

radiohead.each_with_index do |member, index|
    puts "#{index + 1}) #{member.capitalize} plays for Radiohead"
end


### .map

grades = [3, 5, 10, 2, 1]

doubled_grades = grades.map do |grade|
    grade * 2 # Transformation modifying each element
end

# IMPORTANT:
# .map is called on an array
# Within the iteration, we specify a transformation
# .map **returns an array** of the same size as the original array, with each element replaced following the transformation

radiohead = ['thom', 'jonny', 'jordan', 'ed', 'colin']

capitalized_radiohead = radiohead.map do |member|
    member.capitalize # Transformation modifying each element
end


### .select

# With select, we specify a CONDITION in the iteration

j_members = radiohead.select do |member|
    member[0] == 'j' # will be true if the first letter of member is a 'j', false otherwise
end

# select returns a (usually smaller) array that contains all elements that match the condition specified in the iteration


### when using iterators, be careful with:
# 1) What do you call them on? (array, hash...)
# 2) Waht should I specify in the iteration (transformation, condition)
# 3) what do these iterators return ()


# ===== BLOCKS =====

radiohead = ['thom', 'jonny', 'jordan', 'ed', 'colin']

radiohead.each do |member|
    puts "#{member.capitalize} plays for Radiohead"
end

# A block starts with 'do' and finishes with 'end'
# In that specific example above, 'member' is called a block parameter

### Other syntax for blocks

radiohead.map { |member| member.capitalize }

# In that case, the block is delimited by { }



# ===== METHODS =====

# Methods are a way to store some lines of code, to re-use it later

# Defining a method
def full_name(first_name, last_name)
    return first_name.capitalize + ' ' + last_name.capitalize
end

# full_name is the name of my method
# first_name and last_name are called parameters
# This method returns a String


# Calling the method
puts full_name('sylvain', 'pierre')
puts full_name('sasha', 'kaverina')

# Methods also work with VARIABLES!!!
first = 'sylvain'
last = 'pierre'

puts full_name(first, last)


## Why methods?

# Developers are LAZY
# They don't like to repeat themselves
# Methods are a way to avoid that



### Homework

# The most popular coding exercise in the world!
# It's sometimes given for coding interviews

# FizzBuzz

# Define a method that takes one argument (an Integer), and returns an array from 1 to that Integer, with:
# - all multiples of 3 replaced by 'Fizz'
# - all multiples of 5 replaced by 'Buzz'
# - all multiples of 3 and 5 replaced by 'FizzBuzz'


# ===== LIVECODE =====

# We're going to code a simple scraper
# Let's get some prices from the Rakuten e-commerce website!


# Library to open a webpage
require 'open-uri'

# Library to *parse* HTML
require 'nokogiri'

puts "Welcome to our RAKUTEN price checker!"
puts "====="
puts ""
puts "What would you like to check out today?"
print '> '
item_to_search = gets.chomp

# Opening the html as a giant String:
html = open("https://search.rakuten.co.jp/search/mall/#{item_to_search}/").read

# Parsing it (making it easier to manipulate)
parsed_html = Nokogiri::HTML(html)

# Searching in that parsed HTML elements all the prices:
parsed_html.search('.price .important').each do |element|
    puts element.text.strip
end



# ===== Q&A =====

### Q1 - Can we write delete_at(last) or delete_at(first)

radiohead = ['thom', 'jonny', 'phil', 'ed', 'colin']

# This works:
radiohead.delete(radiohead.last)

# This doesn't work:
radiohead.delete_at(last) # Error message


### Q2 - can we do delete_at(0, -1)


radiohead.delete_at(0, -1) # Error message (too many arguments)

# .delete_at takes only one argument


### Q3 - nokogiri and open-uri are gems. Basically, packages that we can install.

