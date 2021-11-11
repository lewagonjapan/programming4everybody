# Hash CRUD

# ==== RECAP ====

# CRUD for arrays

le_wagon_staff = ['sasha', 'douglas', 'yann', 'sylvain']

# Create
le_wagon_staff << 'Terrence' # showel
p le_wagon_staff

# Read 
puts le_wagon_staff[1]
puts le_wagon_staff.first

# Update
le_wagon_staff[0] = 'andrei'
p le_wagon_staff

# Delete
le_wagon_staff.delete('douglas')
le_wagon_staff.delete_at(0)

p le_wagon_staff



# ====== HASHES ======

# In some languages, hashes are called dictionaries
# A Hash is a dictionary-like collection of UNIQUE keys and values
# Each key has a value associated
# Each key is UNIQUE

# Let's build our first Hash

# A hash is delimited by curly braces
# (It has nothing to do with interpolation, and also nothing to do with the block syntax)

market = {
    'switch' => 300,
    'ps5' => 1000,
    'gameboy' => 50,
    'ps4' => 200
}

# Vocabulary:
# switch, ps5, gameboy... are the keys
# 300, 100, 30, ... are the values associated
# => is called a hash rocket
# keys and values can be of any data type


#### CRUD operations for Hashes

## Read
# hash[key]

puts market['gameboy'] # => 30

market.keys # => Array of the keys
market.values # => Array of the values

puts market.key?('gameboy') # => true


# Create
# hash[new_key] = new_value

market['ps3'] = 100 


# Update
# remember that in a hash, keys are unique
# Because of that property, the Create and Update operations have the same syntax
# hash[key_to_update] = new_value

market['gameboy'] = 50 # => price updated to 50


# Delete
# hash.delete(key_to_delete)

market.delete('ps3')



# ===== SYMBOLS =====

# Symbols are 'cousins' to Strings
# Reserved for keywords

tokyo = {
    'population' => 10000000000000,
    'country' => 'japan'
}

# In Ruby, we like to keep the data as String, and keywords as symbols
# Let's rewrite this hash using symbols:

tokyo = {
    :population => 10000000000000,
    :country => 'Japan'
}

# It doesn't affect the syntax for our CRUD operations:
puts tokyo[:population] # => 10000000000


# a symbol, once created, cannot be modified.
# It's actually one and one only object in the memory

# We can turn a String into a Symbol, and vice versa
'country'.to_sym # => :country
:country.to_s # => 'country'


# Another way to rewrite the previous hash:
tokyo = {
    population: 10000000000000,
    country: 'Japan'
}

# The way to read from this hash is STILL THE SAME:
puts tokyo[:population]


###### Iterating over hashes

market = {
    'switch' => 300,
    'ps5' => 1000,
    'gameboy' => 50,
    'ps4' => 200
}

# The same way we can iterate over arrays, we can iterate over hashes


# What is the most basic iterator? .each

market.each do |product, price|
    puts "- #{product}: $#{price}"
end

# .each for hashes: we want access to both the key and the value


# another example: .select

expensive_products = market.select do |product, price|
    price > 200 # condition
end


# ===== LIVECODE 1 =====

# Let's ready from the Github API!

# APIs
# Are a structured way to expose data

# open a URL
require 'open-uri'

# library to parse a JSON file
require 'json'

# Opening the JSON file
json_data = open('https://api.github.com/users/sashakaverina').read

# Parsing the JSON file
parsed_json = JSON.parse(json_data)

puts parsed_json['followers']


# ======= LIVECODE 2 ========


# Let's build Le Wagon Market!


# First feature: As a user, I can buy something from the market
# 0 - Greet the user - OK
# 1 - Ask the user what they want to buy (store that choice in a variable) - OK
# 2 - check if that product is available in the store. - OK
# 3 - If it is, then the user can purchase it - OK
# 4 - If not, let the user know we don't have that - OK
# 5 - Display what the user have in their basket


# Second Feature - Program should stop when user says they're done with shopping
# 1 - Ask user what they would like to do (buy | leave)
# 2 - Keep looping until the user says 'checkout'

# This is our store:
store = {
    'switch' => 300,
    'ps5' => 1000,
    'gameboy' => 50,
    'ps4' => 200
}

# Our basket is a hash, key is going to be the item, value will be the quantity
basket = {}

puts 'Welcome to our Le Wagon market!!'
puts '======='
puts ''

user_choice = ''

until user_choice == 'checkout'
    # Ask user what they want to do
    puts 'What would you like to do? (buy | checkout)'
    user_choice = gets.chomp

    if user_choice == 'buy'
        # Ask user what they want to buy
        puts 'What would you like to buy this time?'
        item_to_buy = gets.chomp

        if store.key?(item_to_buy) # If the product is available in the store
            # add it to the user's basket
            basket[item_to_buy] = 1
            puts "#{item_to_buy} just added to your basket!"
        else
            puts "Sorry, we don't have that in store..."
        end

        puts ''
        puts 'Your cart for now:'
        # Displaying our cart's content
        basket.each do |item, quantity|
            puts "#{item} - qty: #{quantity}"
        end
    elsif user_choice == 'checkout'
        puts 'Thanks for shopping with us!'
    end
end


# ===== Challenge for the week-end ======

# 1) Fix the code so that our user can buy several of the same item
# 2) Add a step at checkout to compute the total amount due
# 3) (Optional: update our code to add a case statement instead of if statement)
# Advanced:
# 4) Add availabity to our store
# 5) make sure that availability is updated when we buy an item

