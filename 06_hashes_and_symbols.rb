# Hash CRUD
# dictionary-like collections of unique keys
# with values

# key => value
# item => price
# => hash rocket

# Hash.new('with a default value')

market_items = {
  'mango' => 800,
  'apple' => 300,
  'pear' => 500,
  'tomato' => 100
}

# CRUD

# Create
# hash[new_key] = new_value
market_items['banana'] = 50

# Read
# hash[key]
market_items['tomato'] # 500
market_items['kiwi'] # nil

market_items.keys # ["mango", "apple", "pear", "tomato"]
market_items.values # [800, 300, 500, 100]

market_items.key?('kiwi') # false
market_items.key?('mango') # true

# Update
# hash[old_key] = new_value
market_items['banana'] = 100

# Delete
# hash.delete(key)
market_items.delete('banana')

# Symbols
# reserved for keywords / identifier
# cousin of a string
# lower_snake_case
# we lose the hash rocket when building the hash

# Text data => String
'Douglas Berkley'
'douglas.berkley@lewagon.org'
'ruby'
'Tokyo'

# Text identifiers => Symbol
:fullname
:email
:skill
:city


# Old Syntax
tokyo = {
  :country => 'Japan',
  :population => 12_000_000
}
# New Syntax (only when BUILDING the hash)
tokyo = {
  country: 'Japan',
  population: 12_000_000
}

# Same as above
# tokyo = Hash.new
# tokyo[:country] = 'Japan'
# tokyo[:population] = 12_000_000

kyoto = {
  :country => 'Japan',
  :population => 1_500_000
}

# hash[key]
# p tokyo[:country]
# p tokyo[country:] # this will break 🙅‍♀️
# p kyoto[:population]

# array.each do |element|
#   puts "do some things with #{element}"
# end

market_items.each do |item, price|
  "#{item} is ¥#{price}"
end

cheap_items =
market_items.select do |item, price|
  price < 500
end

expensive_items =
market_items.select do |item, price|
  item.capitalize
  price >= 500
end

# p expensive_items

# LIVECODE -> Shop at the Le Wagon store

market_items = {
  'mango' => 800,
  'apple' => 300,
  'pear' => 500,
  'tomato' => 100,
  'sweet potato' => 100
}

# alternative
# [
#   { name: 'mango', price: 800 },
#   { name: 'apple', price: 300 },
#   { name: 'pear', price: 500 }
# ]

cart = Hash.new(0)
# example_cart
# cart = { item => quantity }
# cart = { 'apples' => 2}

# 0. Welcome message
# 1. Display the items for sale (with the price)
# 2. Ask the user what item they'd like to buy
# 3. Store the user input in a variable
# 4. Put the item in the cart
# 5. Display the final bill

puts "************************"
puts "-- Welcome to the Shop -- "
puts "************************"

puts "Items for sale:"
market_items.each do |item, price|
  puts "#{item}: ¥#{price}"
end

# Start the loop here
puts "What item would you like to buy? (checkout to quit)"
item = gets.chomp
# To create in a hash
# hash[new_key] = new_value
if market_items.key?(item)
  cart[item] = 1 # one by default (change it later)
else
  puts "Sorry we don't have that..."
end
# End the loop here

total = 0
# cart = { 'apples' => 1 }
cart.each do |item, quantity|
  price = market_items[item]
  item_price = price * quantity
  total += item_price
end

puts "--------Bill-------"
puts "Total: ¥#{total}"

# 3b. Ask the user for the quantity
# 3d. Store the quantity in a variable
# 6. Loop -> Continue asking for items, until 'checkout'
