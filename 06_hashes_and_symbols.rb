# Hash CRUD
# dictionary-like collection of unique keys and values
# key => value
# Hash
market_items = {
  'sweet potatoes' => 100,
  'dango' => 100,
  'pumpkins' => 600,
  'mangoes' => 800,
  'kale' => 500
}
# market_items[:kale]

# market_items = ['potatoes', 'dango', 'pumpkins', 'mango', 'kale', 'zucchini']
# market_prices = [100, 200, 600, 800, 500]

# CRUD
# Create:
# hash_name[new_key] = new_value
market_items['zucchini'] = 200
# market_items['banana'] = 200
# market_items['apple'] = 200
# market_items['strawberry'] = 200
# market_items['grapes'] = 200

# Read
# hash_name[key]
market_items['mangoes']
market_items['zucchini']
market_items.keys
market_items.values
market_items.key?('banana')
market_items.key?('potatoes')


# Update
# hash_name[key] = new_value
market_items['zucchini'] = 900

# Delete
# hash_name.delete(key)
market_items.delete('dango')

#######
# Symbols
# reserved for keywords / identifiers
# cousin of a string
# lower_snake_case

# Data vs. Identifiers

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
  :population => 25000000
}

# New Syntax
tokyo = {
  country: 'Japan',
  population: 25000000,
  best_monument: 'Tokyo Tower'
}

kyoto = {
  country: 'Japan',
  population: 4000000
}

tokyo[:best_monument]
kyoto[:population]

market_items = {
  'sweet potatoes' => 100,
  'dango' => 100,
  'pumpkins' => 600,
  'mangoes' => 800,
  'kale' => 500
}

# array.each do |element|
# end

cart = []
puts "************************"
puts "-- Welcome to the Shop -- "
puts "************************"

# Display items for sale
puts "Items for sale:"
market_items.each do |item, price|
  puts "#{item}: ¥#{price}"
end
# START THE LOOP (while/until)
item = nil
until item == 'quit'
  # Ask the user what they like to buy
  puts "What item would you like? ('quit' to exit)"
  # item = get the user input (kale)
  item = gets.chomp
  # TODO: only add to cart if the store has it
  if market_items.key?(item)
    cart << item
    puts "#{item} was added to your cart..."
  else
    puts "we don't have that today" unless item == 'quit'
  end
end
p cart
# END THE LOOP
total = 0
# Display the bill
# iterate over the cart
#   for each item, we need the price
cart.each do |item|
  price = market_items[item]
  # total = total + price
  total += price
end

puts "--------Bill-------"
puts "Total: ¥#{total}"

# Homework
# 0. reorganize our cart (make it a hash now)
#   cart = {
#     # item => quantity
#     'pumpkins' => 2
#   }
# 1. we want to store the item and the quantity
# 2. ask the user for the item
#    if the item exists, then ask how many

# 3. update our bill (iterate over item, quantity)
# 4. we have to mulitply the quantity by the price
# 5. you can itemize bill
#    "kale: 4 x ¥500 = ¥2000"

# ⚠️ Next-next level
# 6. reorganize the market_items to store the quantity in the store
#   market_items = {
#     'sweet potatoes' => { price: 100, quantity: 100 }
#   }
# 7. check that the quanity exists in the store
# 8. update the quantity in the store











