# Hash CRUD
# dictionary-like. collection of unique keys and values

# When we have an array, it's a simple list
market_items = ['burger', 'roast chicken', 'sushi', 'oreos', 'french fries']
market_item_prices = [500, 600, 1000, 200, 200]

# We can organize our data a little better, inside of our hash

# How to create? {}

market_item_prices = {
  'burger' => 500,
  'roast chicken' => 600,
  'sushi' => 1000,
  'oreos' => 200,
  'french fries' => 200
}
# p market_item_prices[0][1]
# p market_item_prices['burger']['price']

# CRUD practice with Hash
# Create
# hash_name[new_key] = new_value
market_item_prices['curly french fries'] = 250

# Read
# hash_name[key]
market_item_prices['oreos']
market_item_prices.keys
market_item_prices.values
market_item_prices.key?('banana')
market_item_prices.key?('sushi')
market_item_prices.value?(500)

# Update (it's the same as create)
# hash_name[key] = new_value
market_item_prices['oreos'] = 150

# Delete
# hash_name.delete(key)
market_item_prices.delete('burger')

# array.each do |element|

# end

# hash.each do |key, value|
"These are the items in our store:"

market_item_prices.each do |item, price|
  "#{item.capitalize}: ¥#{price}"
end

#######
# Symbols
# reserved for keywords/identifiers
# cousin of a string

# Text data => String
'Douglas Berkley'
'douglas.berkley@lewagon.org'
'ruby'
'Tokyo'

# Text identifiers => Symbol
:full_name
:email
:skill
:city

tokyo = {
  country: 'Japan',
  population: 12_000_000
}

kyoto = {
  country: 'Japan',
  population: 1_500_000
}

tokyo[:population]
kyoto[:population]

# Build a store where a user can "purchase" our market_items
market_items = {
  'burger' => 500,
  'roast chicken' => 600,
  'sushi' => 1000,
  'oreos' => 200,
  'french fries' => 200
}
# √ Welcome them to our shop
# √ Display the items w/the prices in our store
# √ Ask the user what they want to buy
# √ Get the user item
# √ Ask user how many would you like
# √ Add the item and quantity into the cart
# Display their bill from the items in the cart

# What data type should cart be??? 🤔
# cart = { 'item' => quantity }
cart = {}
puts "*********************************"
puts "-- Welcome to the Le Wagon Shop --"
puts "*********************************"

market_items.each do |item, price|
  puts "#{item}: ¥#{price}"
end

puts "What would you like to buy?"
item = gets.chomp # ALWAYS gives a string

puts "How many would you like?"
quantity = gets.chomp.to_i # integer

# hash_name[key] = value
cart[item] = quantity

# Tell the user their total bill
total = 0
cart.each do |item, quantity|
  price = market_items[item]
  # total = total + (price * quantity)
  total += price * quantity
end
puts "Bill:"
puts "¥#{total}"

# 1. loop over the what you would like to buy and the quantity ('quit' to get the bill) while/until
# 2. before we ask for quantity, check if item is in the shop (.key?)
# 3. display an itemized bill oreos: ¥200 x 5 = ¥1000 (display something for each item and then the total)

# ⚠️ NEXT LEVEL!
# Reorganize the store to hold availibility
# when the user choose the quantity, you check if we have that many in the store
# if we do, put it in the cart and remove that quantity from the store (Updating the hash)
# market_items = {
#   'burger' => { price: 500, availibility: 5 },
# }

# > Which item? ('quit' to checkout)
# > kiwi
# > How many?
# > 2
# > Which item? ('quit' to checkout)
# > kiwi
# > How many?
# > 4
# > Sorry, there are only 3 kiwis left..
# > [...]
# > -------BILL---------
# > kiwi: 2 X ¥1.25 = ¥2.5
# > mango: 3 X ¥4 = ¥12
# > TOTAL: ¥14.5
# > --------------------
