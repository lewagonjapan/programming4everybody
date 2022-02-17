# Hash CRUD

# Recap on CRUD for arrays

# CRUD stands for Create, Read, Update and Delete

le_wagon_team = ['sasha', 'yann', 'sylvain', 'sylvain']

# Read
le_wagon_team[1]

# Create
le_wagon_team << 'douglas'

# Update
le_wagon_team[0] = 'sasha kaverina'

# Delete
le_wagon_team.delete('sylvain')
# be careful, it deletes ALL instances of the element
le_wagon_team.delete_at(-1)

# ==== HASHES =====

# What is a hash?
# In some languages, hashes are called... dictionary
# dictionary-like collection of key and values associated
# each key has a value associated
# keys are UNIQUE

market = {
    'ps5' => 1000,
    'switch' => 300,
    'gameboy' => 30
}

# Vocabulary:
# - ps5, switch and gameboy are called KEYS, in that case, they are Strings
# - 1000, 300, and 30 are called VALUES, in that case, they are Integers
# - => is called a hash rocket
# - keys and values can be of any type


#### CRUD for Hashes

### Read
# Theory: hash[key]
market['ps5'] # => 1000

# Some advanced read methods

# .keys
market.keys # Array of keys

# .values
market.values # Array of values

# .key? .value?
market.key?('bananas') # => false
market.value?(20000) # => false


### Create and Update
# Theory: hash[key] = value
# create and update, for a hash, have the exact same syntax
# Why?
# Because in a hash, keys are unique

# creating the n64 key and associated value
market['n64'] = 100

# updating the gameboy value
market['gameboy'] = 50


### Delete
# Theory: hash.delete(key_to_delete) # PARENTHESIS
market.delete('switch')


# ===== SYMBOLS =====

# What are symbols?
# Symbols are cousin to Strings
# They are reserved for keywords

tokyo = {
    'population' => 100000000,
    'country' => 'Japan'
}

# Can be re-written with symbols:
tokyo = {
    :population => 10000000,
    :country => 'Japan'
}

# Syntax Sugar / another way to write things:
tokyo = {
    population:  10000000,
    country: 'Japan'
}

# How do we read from that last hash?
tokyo[:population]

# symbols have a unique object ID
# not other objects
:population.object_id == :population.object_id # => true
'Sylvain'.object_id == 'Sylvain'.object_id # => false

# A couple of symbol methods
p 'tokyo'.to_sym # => :tokyo
p :tokyo.to_s # => 'tokyo'


### Iterators for hashes

market = {
    'ps5' => 1000,
    'switch' => 300,
    'gameboy' => 30
}

# .each do |key, value|
market.each do |item, price|
    puts "#{item} - price: USD#{price}"
end

# .select
expensive_items = market.select do |item, price|
    price > 100
end



# ===== LIVECODE 1 =====

# API call

# APIs, are ways for web applications to make some data public and structured, for external users

# Github actually has a fully public api

# library to open a URL
require 'open-uri'

# Library to parse (process) a JSON file
require 'json'

puts 'Hey! Welcome to our github reader'
puts 'What is your github username?'
print '> '
username = gets.chomp
# open the json file
json = open("https://api.github.com/users/#{username}").read

user_hash = JSON.parse(json)

puts "Welcome back! You have #{user_hash['followers']} followers!"



# ==== LIVECODE 2 - Le Wagon Market =====

market = {
    'ps5' => 1000,
    'switch' => 300,
    'gameboy' => 30
}

# cart is empty at first
# in that cart hash, keys are going to be items, and values are going to be how many we bought
cart = {}

# Feature 1: as a user, I can buy an item from the market
# 0 - greet the user! - OK
# 1 - display what is in store today - OK
# 2 - ask the user what they would like to buy - OK
# 3 - check *if* that item is in the store - OK
# 4 - add that item to our user's cart - OK
# 5 - confirm the content of their cart

# Feature 2: allow user to buy several items
# 1 - Ask user if they want to buy or quit
# 2 - Loop *until* they decide to checkout

puts '🕹 Welcome to Le Wagon market !! 🕹'
puts "======\n\n"

puts 'In store today:'
market.each do |item, price|
    puts "#{item} - #{price} Eur"
end

# loop starts
user_choice = ''
until user_choice == 'checkout' # user decides to checkout
    puts 'What would you like to do now? buy | checkout'
    user_choice = gets.chomp

    if user_choice == 'buy'
        puts 'What would you like to buy?'
        print '> '
        item_to_buy = gets.chomp

        if market.key?(item_to_buy)
            # adding the item to the cart
            cart[item_to_buy] = 1
            puts "#{item_to_buy} added to your cart! 👏  \n\n"
            # Displaying the content of the cart
            puts 'Your cart right now:'
            cart.each do |item, quantity|
                puts "#{item}: #{quantity} pc(s)"
            end
        else
            puts "Sorry, we don't have that in store 😭"
        end
    elsif user_choice == 'checkout'
        puts 'Thanks for shopping with us!'
    else
        puts 'Sorry, that is not a valid option'
    end
end
# loop ends


# Homework / extra features
# 1) Fix the switch bug (user should be able to buy more than 1 item)
# 2) Add an available quantity for each item
# 3) Whenever user buys, reduce that quantity
# 4) Ask user how many of that item they want to buy
# 5) ....
