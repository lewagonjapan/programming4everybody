
### Methods


# ===== ITERATORS & BLOCKS ===== 

# What are iterators?
# Iterators are methods to *iterate* (go over) an array and do something with each element

### Simple iterator

# .each

radiohead = ['Thom', 'Ed', 'Colin', 'Jonny', 'Phil']

radiohead.each do |member|
    puts "#{member} plays with Radiohead"
end

# We can replicate the behavior of all the following interators using .each


### Advanced Iterators

# .each_with_index
radiohead.each_with_index do |member, index|
    puts "#{index + 1}) #{member} plays with Radiohead"
end


# .map

# .map lets you apply a transformation to each element, and RETURNS an array of the same size, with each element replaced with that operation
numbers = [1, 3, 5, 7]

double_numbers = numbers.map do |number|
    # Specify a transformation
    number * 2
end

p double_numbers
p numbers

# numbers =  [1,   3,   5,   7]
# === .map applies a transformation, in that case * 2
# d_number = [2,   6,   10,  14]

# for each iterator, remember:
# What are they called on
# What do we need to write in the block
# What do they return


# .select

radiohead = ['Thom', 'Ed', 'Colin', 'Jonny', 'Todd']

t_members = radiohead.select do |member|
    # Specify a condition
    member.chars.first == 'T' # Whenever this is true, will 'keep' the element
end

p t_members


### What the h**l are blocks?
# Blocks are a way to pass some code to methods

radiohead.each do |member|
    puts "#{member} plays with Radiohead"
end

# everything from 'do' to 'end' is called a block
# 'member' is called a block parameter

### 1-line block syntax

# This:
radiohead.select do |member|
    member.chars.first == 'T'
end

# can be refactored with 1-line:
radiohead.select { |member| member.chars.first == 'T' }

# which one is better?
# the answer is, as always, readability


## ==== METHODS ====

first_name = 'sasha'
last_name = 'kaverina'

puts "#{first_name.capitalize} #{last_name.capitalize}"

# If we want to repeat this process, we need to write a lot of code:

another_name = 'coelien'
another_last_name = 'plain'

puts "#{another_name.capitalize} #{another_last_name.capitalize}"

# Methods are a way to avoid repeating yourself, and keep your code DRY
# A method will let us store some code, to be able to re-use it later


# Defining a method

def full_name(first, last)
    name = "#{first.capitalize} #{last.capitalize}"
    return name
end

# Calling the method
puts full_name('sasha', 'kaverina')

# you can use puts in a method
# but please, NEVER do it 🙏🙏🙏🙏


# Methods work with variables too!
puts 'What is your first name?'
user_first = gets.chomp

puts 'What is your last name?'
user_last = gets.chomp

capitalized_name = full_name(user_first, user_last)

puts "Welcome to the class, #{capitalized_name}!"

# Quick summary about methods
# When using methods, remember their signature:
# - What is the name of the method?
# - Parameters? (type, how many)
# - What does the method return?

## Conventions
# 1) method names are written in lower_snake_case
# 2) methods that end with a ? will always return true or false
# 3) methods that end with ! are called destructive or dangerous (DO NOT USE THEM)


# ==== LIVECODE =====

# Get prices from Rakuten AUTOMATICALLY
# WARNING: this is advanced

# a library to open a web page
require 'open-uri'

# a library that lets me parse (process) the HTML page that I got
require 'nokogiri'

puts 'Welcome to our Rakuten price scraper!'
puts 'What would you like to look for today?'
print '> '
keyword = gets.chomp

html = open("https://search.rakuten.co.jp/search/mall/#{keyword}/").read
# html is actually a big String

parsed_html = Nokogiri::HTML(html)

# Look into the parsed HTML
parsed_html.search('.price .important').first(20).each do |element|
    puts element.text.strip
end
