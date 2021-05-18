
### Methods



# ======= METHODS =======

# Why do we need methods?

# Developers are LAZY
# They don't want to repeat themselves
# Methods are a way to do that
# A method allows us to store some code, and re-use it later

# a method to compute the full_name,
# given the first and last name

# Defining a method
def full_name(first, last)
  return first.capitalize + ' ' + last.capitalize
end


# Calling a method
puts full_name('sylvain', 'pierre')

puts full_name('john', 'doe')

# Calling a method and passing variables as arguments:

puts 'Hey, what is your first name?'
first_name = gets.chomp

puts 'Hey, what is your last name?'
last_name = gets.chomp

puts full_name(first_name, last_name)


# Three important concepts about Methods:

# 1) Difference between DEFINING and CALLING a method

# 2) Method Signature:
# - Name of the method
# - Number (and types) of parameters
# - what does it return

# 3) Conventions:
# - name should be lower_snake_case
# - ? methods should return true or false
# - ! methods modify the original input




# ======= LIVECODE =======

# Scrape the Web 😱😱

# Scrape prices from Rakuten
# DISCLAIMER ⚠️ This is a bit advanced


# I need to be able to open a web page
require 'open-uri'

# I need to be able to parse some HTML
require 'nokogiri'

# Asking the user what prices they want to find:
puts 'Hey! What do you want to look for on Rakuten?'
user_input = gets.chomp

# opening a link, and 'reading' it, interpolating the user answer:
doc = open("https://search.rakuten.co.jp/search/mall/#{user_input}/").read

# doc is just a HUGE string

# Parsing the big string into something that I can easily read:
html = Nokogiri::HTML(doc)


prices = html.search('.price .important').first(10).map do |element|
  element.text.strip
end

p prices # => displays the prices for the first 10 search results from Rakuten



# ======= Q&A =======


# 1️⃣ - Can we store a variable in an array?
# Yes!

le_wagon_team = ['Sasha', 'Douglas', 'Yann']

first_name = 'Ada'
le_wagon_team << first_name
p le_wagon_team # => ['Sasha', 'Douglas', 'Yann', 'Ada']



# 2️⃣ - How can we mirror the behavior of .map with .each?

upcased_members = []

radiohead.each do |member|
  upcased_members << member.upcase
end

p radiohead
p upcased_members



# 3️⃣ - Where can I find the list of gems available?
# https://rubygems.org/



# 4️⃣ - What are some popular Ruby gems?

# Rspec - to write tests
# Rubocop - A Linter (checking )
# byebug - debugging gem
# csv - open / read / write in csv files


# 5️⃣ - Why not use puts in methods?
# You need to keep flexibility for the methods you define

def full_name(first, last)
  first.capitalize! + ' ' + last.capitalize!
end

# Best Practice:
# A method should return something, never puts.

puts full_name('pierre', 'sylvain')



