# Hash CRUD
# dictionary-like collection of unique key
# for each key, a value is associated
# key / value pair

# key => value
# item => price

# name item and the price
market_items = {
  'carrots' => 100,
  'apples' => 1000,
  'bananas' => 200,
  'kiwi' => 500
}

# Arrays
numbers = [1, 2, 3, 4]
# index
# numbers[0]

# CRUD
# market_items
# Create
# hash[new_key] = new_value
market_items['broccoli'] = 300

# Read
# hash[key] # => value
market_items['apples']
market_items['coconuts']

market_items.keys
market_items.values

market_items.key?('kiwi')
market_items.value?(300)

# Update
# exact same way as create
# hash[exisiting_key] = new_value
market_items['bananas'] = 400

# Delete
# hash.delete(key)
market_items.delete('carrots')

# Symbols
# cousin to the string
# reserved for keywords

tokyo = {
  country: 'Japan',
  population: 12000000
}

tokyo[:population]

kyoto = {
  country: 'Japan',
  population: 3000000
}


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

market_items = {
  'carrots' => 100,
  'apples' => 1000,
  'bananas' => 200,
  'kiwis' => 500
}

# array.each do |element|
#   p element
# end

market_items.each do |name, price|
  # "#{name} are ¥#{price}"
end

# => .each returns the original array

# market_items.each_key do |key|
#   puts key
# end

expensive_items =
market_items.select do |name, price|
  price >= 500
end

# p expensive_items

# market_items = {
#   'carrots' => { price: 100, quantity: 100}
# }
# p market_items['carrots'][:price]

####### LIVECODE

# This file is used to livecode each part during a live session
market_items = {
  'carrots' => 100,
  'apples' => 1000,
  'bananas' => 200,
  'kiwis' => 500
}

shopping_cart = {}

# example_cart
# shopping_cart = { name => quantity }
# shopping_cart = { 'kiwis' => 1 }

# setup a shopping application
# 0 - welcome message
# 1 - display the items for sale today
# 2 - ask the user what they want to buy
# 3 - put the item in the shopping cart
# 4 - display the final bill

puts "Welcome to Le Wagon Farmer's Market!"

market_items.each do |name, price|
  puts "#{name}: ¥#{price}"
end

# start loop here

puts 'What would you like to buy?'
item = gets.chomp

# hash[new_key] = new_value
# defaulting at 1 quantity
if market_items.key?(item)
  # ask user for quantity
  shopping_cart[item] = 1
else
  puts "We don't have that item... 😢"
end

puts '****BILL****'
shopping_cart.each do |item, quantity|
  price = market_items[item] * quantity
  puts "#{item} x #{quantity} = ¥#{price}"
end
puts '************'

# HOMEWORK
# 0 - Make the store loop! until == 'quit'
# 1 - Ask the user for the quantity of the item
# 2 - Refactor the store to add quantities
# market_items = {
#   'carrots' => { price: 100, quantity: 100 }
# }
# 3 - Update the quantity left in the store
