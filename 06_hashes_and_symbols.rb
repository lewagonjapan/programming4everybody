# Hash CRUD


# ==== RECAP ====

### CRUD for arrays

radiohead = ['thom', 'ed', 'phil', 'colin', 'jonny']

## Read
# theory: array[index]
puts radiohead[1]
puts radiohead.last

## Create
radiohead.push('michael')
radiohead << 'alex'

## Update
radiohead[2] = 'sarah'

## Delete
radiohead.delete('michael')
radiohead.delete_at(-1)


### Iterating over an array: .each 

radiohead.each do |member|
    puts "#{member.capitalize} plays for Radiohead"
end


# ==== HASHES ====

# What is a hash?
# - In some other programming languages, we call it a dictionary
# - A hash is a dictionary-like collection of *unique* keys and associated values

fruit_market = {
    'banana' => 50,
    'kiwi' => 100,
    'apple' => 250
}

# Important notes:
# - a hash is delimited by {}
# - => is called a hash rocket
# - In that example, keys are Strings, and values are Integers
# - In general, keys and values can be of any type


### CRUD for Hashes

## Read

# Theory: hash[key_to_access]
puts fruit_market['banana'] # => 50

# Advanced read methods
p fruit_market.keys # => Array of all the keys
p fruit_market.values # => Array of all the values
puts fruit_market.key?('banana') # => true

### Create

# Theory: hash[key_to_add] = associated_value
fruit_market['melon'] = 800
p fruit_market


### Update

# Update syntax for a hash is exactly the same as the create syntax
# Why? Because keys are unique
fruit_market['banana'] = 75

fruit_market['strawberries'] = 500 # This will create a new key / value pair

### Delete

# Theory: hash.delete(key_to_delete)
fruit_market.delete('kiwi')


# ==== SYMBOLS ====

# Symbols are:
# - 'cousin' to Strings
# - reserved for keywords

city_one = {
    'name' => 'Tokyo',
    'population' => 100000000000,
    'country' => 'Japan'
}

city_two = {
    'name' => 'Epinal',
    'population' => 35000,
    'country' => 'France'
}

# Let's rewrite city one with symbols
city_one = {
    :name => 'Tokyo',
    :population => 100000000000,
    :country => 'Japan'
}

# This notation is so common that we have Syntax Sugar for it:
city_one = {
    name: 'Tokyo',
    population: 100000000000,
    country: 'Japan'
}

# CRUD operations with symbols
# Example for Read
puts city_one[:name]


# 😱 Advanced Concept (don't worry if you don't understand that) 😱
# The same symbols are the SAME object

puts 'name' == :name # => false

puts 'name'.object_id == 'name'.object_id # => false
puts :name.object_id == :name.object_id # => true



### Iterators for hashes

## .each

fruit_market.each do |item, price|
    puts "- #{item}: #{price} JPY"
end

# when iterating with .each over a hash, we have access to both key and value


### .select
expensive_fruits = fruit_market.select do |item, price|
    # condition in the block
    price >= 100
end

p expensive_fruits



# === LIVECODE ====

# Let's play with APIs!

# but first, what is an API
# An API is equivalent to a plug in a wall
# Said otherwise, it is a way, for a web application, to make some data available to the outside

# For example: 
# If Airbnb had an API, they could make available to the outside apartment names, addresses, daily price, ....


# Let's play with Github API data


# Library to open a web page in Ruby
require 'open-uri'

# a library to turn (parse) a JSON into a hash
require 'json'

# Pseudo-code
# 1) open the web page
# 2) read the content
# 3) parse the content into an actual Ruby hash
# 4) play with that hash

# opening the web link and 'reading' the content

puts 'Welcome to our Github Data Reader!'
puts 'What is your Github username?'
print '> '
username = gets.chomp

json = open("https://api.github.com/users/#{username}").read

user_hash = JSON.parse(json)

puts 'retrieving data...'
puts ''
sleep(1)
puts "Welcome #{user_hash['name']}! You work for #{user_hash['company']}, and you have only #{user_hash['followers']} followers"




# ==== Homework =====

# Build a shopping application

# Create a 'market' that has items to sell OK
# User can buy one item OK

# User can checkout
# User can display their cart
# User can buy several items
# The market has limited supplies
# User can display their total bill

fruit_market = {
    'banana' => 50,
    'kiwi' => 100,
    'apple' => 250
}

cart = []

puts 'Welcome to our Le Wagon market!'
puts 'This is what we have in stock today:'

fruit_market.each do |item, price|
    puts "#{item}: #{price} jpy"
end
puts ''
puts 'What do you want to buy today?'
print '> '
item_to_buy = gets.chomp.downcase

if fruit_market.key?(item_to_buy)
    # Add the item to the user cart
    cart << item_to_buy
    puts "#{item_to_buy} has been added to your cart!"
else
    puts 'Sorry, we do not have that in stock...'
end

