# Hash CRUD
# key / value pair
# acts like a dictionary, the keys are unique

movie_ratings = {
  'godfather' => 10,
  'parasite' => 10,
  'matrix' => 9,
  'cats' => 0
}

# Read
# array[index]
# hash[key] => value
movie_ratings['godfather'] # => 10
movie_ratings['batman'] # => nil

movie_ratings.keys
movie_ratings.values

# methods ending in a question mark returns a boolean
movie_ratings.key?('parasite')
movie_ratings.value?(0)

# Create
# array << value
# hash[new_key] = new_value
# p movie_ratings

movie_ratings['batman'] = 10

# Update
movie_ratings['batman'] = 5

# Delete
movie_ratings.delete('batman')

#Symbols
# reserved for keywords
# .to_sym == .intern

tokyo = {
  country: 'Japan',
  population: 9000000
}

# older notation
tokyo = {
  :country => 'Japan',
  :population => 9000000
}

# p tokyo['country']
tokyo[:country]
tokyo[:population]

kyoto = {
  'country' => 'Japan',
  'population' => 1400000
}


"Tokyo is in #{tokyo[:country]} with a population of #{tokyo[:population]}"

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


movie_ratings = {
  'godfather' => 10,
  'godfather 2' => 10,
  'parasite' => 10,
  'matrix' => 9,
  'cats' => 0
}

# array.each do |element|
# hash.each do |key, value|

# get all of the movies with a 10 rating
# .select => inside of the block, you have to give a condition (true / false) -> [] => [], {} => {}

top_movies = movie_ratings.select do |name, rating|
  # name[0] == 'g'
  # p name.start_with?('g') # true / false
  rating == 10
end

# p top_movies

movie_ratings.each_value do |rating|
  rating
end

movie_ratings.each_key do |name|
  name.capitalize
end

# farmer's market -> items to buy
# market_items = []
market_items = {
  carrots: 100,
  onions: 30,
  tomatoes: 20,
  potatoes: 3
}

# cart = {carrots: => 5, onions: => 2}
cart = { tomatoes: 10 }

# display to user
puts "Welcome to the farmer's market"
puts 'Here are the items we have today:'
market_items.each do |name, quantity|
  puts "#{name} -> #{quantity}qty"
end
puts ''
# ask the user what they want to do
puts 'What would you like to do?'
puts 'add / update / delete / display'
choice = gets.chomp

case choice
when 'add'
  # ask user which item
  puts "Which item would you like?"
  item = gets.chomp.to_sym
  # if we have the item
  if market_items.key?(item)
    # how many do you want
    puts "How many would you like?"
    quantity = gets.chomp.to_i
    # add it to the cart (hash)
    cart[item] = quantity
    puts "#{item} was added to your cart..."
  else
    # if dont have the item
    # sorry we dont have it
    puts "Sorry we don't have that today 😢"
  end
when 'update'
  puts "Which item would you like to change?"
  item = gets.chomp.to_sym
  if cart.key?(item)
    puts "How many did you want?"
    new_quantity = gets.chomp.to_i
    cart[item] = new_quantity
    p cart
    puts "#{item} was updated in your cart..."
  else
    puts "Sorry that's not in your cart 🤔"
  end
when 'delete'
  puts "Which item would you like to remove?"
  item = gets.chomp.to_sym
  cart.delete(item)
  puts "#{item} was removed from your cart..."
when 'display'
  # hash.each do |key, value|
  cart.each do |name, quantity|
    puts "#{name} -> #{quantity}qty"

    # build html for the cart item
  end
else
  puts "Sorry I don't know that option."
end

# make the market loop over the choices
# check the quantity of the items before you add a new item
# when you delete, put the items back in the store
# make sure an item is in the cart before you delete it


# NEXT LEVEL - DIFFICULT
# store the items in the market as hashes
# market_items = {
#   carrots: { quantity: 100, price: 10 }
# }







