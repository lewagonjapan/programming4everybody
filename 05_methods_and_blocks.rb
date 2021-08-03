
### Methods & Blocks


# ===== BLOCKS =====

## So... what the hell is a block??

# A block is delimited by:
# do....end

# A block allows you to pass some code to a method

ages = [35, 24, 56, 4]

ages_next_year = ages.map do |age| # starting the block after 'do', 'age' is the block parameter
  age + 1 # code passed to the 'map' method
end # ending the block

# Different syntax for blocks
# one-line syntax

ages_next_year = ages.map { |age| age + 1 }

# (same code as above in a 1-line syntax)


# ==== METHODS ====

# Why methods?

# To avoid repeating ourselves, we use methods
# Methods are a way to keep your code DRY

# Defining a method

def full_name(first_name, last_name)
   capitalized_name = first_name.capitalize + ' ' + last_name.capitalize
  return capitalized_name
end

# full_name is the method name
# first_name and last_name are parameters
# the method *returns* capitalized_name (a String)


puts 'What is your first name?'
first = gets.chomp

puts 'What is your last name?'
last = gets.chomp


# Calling the method:

name = full_name(first, last)
# first and last are called arguments


puts "welcome #{name}"


# Method signature:

# 1) What is the name of the method?
# 2) How many parameters does it have? What data type?
# 3) What does the method return? (What data type)


# Conventions:

# 1) method name should be lower_snake_case

# 2) ? methods return true or false
# .odd? .even? .include?

# 3) ! notifies a destructive / dangerous method


# ==== LIVECODE ====


# Extract prices from Rakuten website


# A way to open a link with Ruby
require 'open-uri'

# A way to 'analyze' HTML (parse)
require 'nokogiri'


puts 'What would you like to look for on Rakuten?'
search_term = gets.chomp

link = "https://search.rakuten.co.jp/search/mall/#{search_term}/"

# Opening the web page as a giant text file (String)
html = open(link).read

# parsing the HTML
elements = Nokogiri::HTML(html)

# finding prices in the HTML
prices = elements.search('.price important').first(10).map do |element|
  element.text.strip
end

