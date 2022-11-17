# Hash CRUD
# unique keys with values (pair) -> dictionary

# What is array's job? -> simple collection
items = ['apple', 'banana', 'kiwi', 'watermelon']
# price of the apple
# p items[0][2]

# To combine hashes
# hash.merge(the_other_hash)

# items as a hash
item_prices = {
  # 'apple' => { price: 500, quantity: 15 },
  'apple' => 500,
  'watermelon' => 800,
  'banana' => 200,
  'kiwi' => 500,
  'dragon fruit' => 900
}
# p item_prices['apple'][:price]

# CRUD HASH -> key

# Create
# hash[key] = value
item_prices['orange'] = 400

# Read
# hash[key]
item_prices['apple']
item_prices.keys
item_prices.values
item_prices.key?('apple')
item_prices.value?(500)

# Update (same as create) updating the value, not the key
# hash[key] = new_value
item_prices['orange'] = 600

# Delete
# hash.delete(key)
item_prices.delete('orange')

# array.each do |element|
# end

# hash.each do |key, value|
# end

# item_prices.each do |item, price|
#   puts "#{item}: ¥#{price}"
# end

# SYMBOLS
# reserved for keywords/identifiers
# cousin of the string

# Text data => String
'Douglas Berkley'
'douglas.berkley@lewagon.org'
'ruby'
'Tokyo'
'Japan'

# Text identifiers => Symbol
:full_name
:email
:skill
:city
:country

tokyo = {
  'country' => 'Japan',
  'population' => 12_000_000
}

# old syntax
# tokyo = {
#   :country => 'Japan',
#   :population => 12_000_000
# }

# the colon is on the left side
:symbol
# the colon goes on the right side, when building the hash
# aka inside of the curly brackets

tokyo = {
  country: 'Japan',
  population: 12_000_000
}

kyoto = {
  country: 'Japan',
  population: 1_500_000
}

# p tokyo[:population]
# p kyoto[:population]
# p kyoto[:population] = 1_500_001
# p kyoto[:mayor] = 'Tanaka san'


item_prices = {
  'apple' => 500,
  'watermelon' => 800,
  'banana' => 200,
  'kiwi' => 500,
  'dragon fruit' => 900
}
cart = {
  # 'item' => 'quantity'
  # 'apple' => 3
}
# cart[item] = quantity

# Pseudocode -> write steps in English
# puts a welcome message to the user
puts "****************************"
puts "Welcome to the Le Wagon shop"
puts "****************************"
# tell the user what items w/prices that we have in the store
item_prices.each do |item, price|
  puts "#{item.capitalize}: ¥#{price}"
end

# puts -> ask the user what item they'd like to buy
# gets.chomp -> store the item they want
# puts -> how many?
# gets.chomp => store the quantity they want
puts "What item do you want? ('quit' to exit)"
item = gets.chomp.downcase # always gives a string
puts "How many?"
quantity = gets.chomp.to_i
# put this item and quantity in our cart
cart[item] = quantity

# display the bill/check to the user
# iterate over the items in the cart
total = 0
cart.each do |item, quantity|
  # get the price for each item
  price = item_prices[item]
  total_item_price = price * quantity
  # total = total + total_item_price
  total += total_item_price
end
# total the bill
puts "****************"
puts "Bill: ¥#{total}"
puts "****************"

# taking to the next level (aka homework...)
# 0. loop over asking them what they want.
# 1. when the user says 'quit' we stop asking for items
# 2. only add the item in the cart, if the shop has it

# ⚠️ Super next level
# Reorganize the store to hold the availibility
# item_prices = {
  # 'apple' => { price: 500, quantity: 15 },
  # 'banana' => { price: 200, quantity: 40 },
  # 'kiwi' => { price: 500, quantity: 2 },
# }
# so when the user choses the quantity...
# check if there is enough
# if there is enough, you need to take it OUT of the store hash
