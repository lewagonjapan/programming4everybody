# Hash CRUD
# dictionary -> unique set of key with values
# more complex way to store data

# array is a simple collection, accessed by the index
# items = ['apple']

{} # create an empty hash
# hash_with_default_value = Hash.new(0)

# => hash rocket
# create a hash with information inside already
# { key => value}
item_prices = {
  'apple' => 200,
  'watermelon' => 800,
  'bananas' => 150,
  'dragon fruit' => 900
}

# CRUD

# Create -> need the key then assign the value
# hash[key] = value
item_prices['kiwi'] = 300

# Read -> need the key
# hash[key]
item_prices['apple'] # 200
item_prices['dragon fruit'] # nil
item_prices.value?(600)
item_prices.key?('watermelon')
item_prices.keys
item_prices.values
item_prices.length
item_prices.count
item_prices.size

# Update -> exact same as create
# hash[key] = new_value
item_prices['kiwi'] = 350

# Delete -> method .delete which takes a key
# hash.delete(key)
item_prices.delete('kiwi')


# Iterating
numbers = [1, 2, 3]
numbers.each do |number|
  # do something
  # puts number
end

item_prices = {
  'apple' => 200,
  'watermelon' => 800,
  'bananas' => 150,
  'kiwi' => 300,
  'dragon fruit' => 900
}

item_prices.each do |item, price|
  "#{item}: ¥#{price}"
end

# Symbols -> 'cousin' of the string
# reserved for keywords/identifiers
# 1. easier to read/write
# 2. ruby convention
# 3. performance

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

# old syntax (with hash rockets)
apples = {
  :price => 200,
  :availibility => 10
}

# new syntax (without hash rockets)
apples = {
  price: 200,
  availibility: 10
}

bananas = {
  price: 150,
  availibility: 20
}

# taking to the next level - hash inside a hash
# item_prices = {
#   'apple' => { price: 200, availibility: 10},
#   'watermelon' => { price: 800, availibility: 2},
#   'bananas' => { price: 150, availibility: 50},
#   'kiwi' => { price: 300, availibility: 8},
#   'dragon fruit' => { price: 1200, availibility: 1},
# }

# # the price of apples
# p item_prices['apple'][:price]
# p item_prices['dragon fruit'][:availibility]


item_prices = {
  'apple' => 200,
  'watermelon' => 800,
  'bananas' => 150,
  'kiwi' => 300,
  'dragon fruit' => 900
}

# cart = { item => quantity}
# cart = { 'kiwi' => 2}
cart = {}
# Run a Le Wagon Fruit shop
# Welcome the user to the shop
puts '*******************************'
puts 'Welcome to the Le Wagon Fruit shop 🍎🍌🍉🥝🐲'
puts '*******************************'
# Display all of the items in the shop
puts "Fruits for today:"
item_prices.each do |item, price|
  puts "#{item}: ¥#{price}"
end
# start the loop -> until the user wants to checkout
item = nil
# the first time, it's checking if nil is equal to 'checkout'
until item == 'checkout'
  # Ask user which item  they want to purchase
  puts "Which item would you like? ('checkout' to finish)"
  # get the user's choice
  item = gets.chomp # always returns a string
  # check if the item is in the store
  if item_prices.key?(item)
    # ask the user how many they want
    puts "How many?"
    quantity = gets.chomp.to_i
    # hash[key] = value
    cart[item] = quantity
  elsif item == 'checkout'
    puts "Tabulating your bill..."
  else
    puts "Sorry we are out of #{item} 😢"
  end
end
puts ''
# add the choice into the shopping cart#
# ALWAYS make the program work one time through, THEN you can add the loop
# display the bill the user
total = 0
# iterate over the cart and get the item_price of each one, then add it to the total
puts 'Bill:'
cart.each do |item, quantity|
  price = item_prices[item]
  item_price = price * quantity
  puts "#{item}: ¥#{price} X #{quantity} = ¥#{item_price}"
  total += item_price
end
puts "TOTAL: ¥#{total}"


# Homework -> take the shop to the next level
# update our store items
item_prices = {
  'apple' => { price: 200, availibility: 10},
  'watermelon' => { price: 800, availibility: 2},
  'bananas' => { price: 150, availibility: 50},
  'kiwi' => { price: 300, availibility: 8},
  'dragon fruit' => { price: 1200, availibility: 1},
}

# 0. change how we display the fruits to the user
# 1. when the user chooses the quantity, you have to make sure the store has enough
# 1a. if enough, add to the cart AND remove that quantity from the store
# 1b. if not enough, tell the user we don't have that many
# 2. check how the bill is calculated since the price is inside the other hash now
