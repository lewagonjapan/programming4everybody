# Hash CRUD
# key - value pair
# acts like a dictionary, the keys are unique

# movie_names = Hash.new("default") # give default value
movie_ratings = {
  'godfather' => 10,
  'parasite' => 10,
  'matrix' => 9,
  'cats' => 0
}


# Read
# X - array[index]
# hash[key]
movie_ratings['godfather'] # => 10
movie_ratings['batman'] # => nil

# Create
# X - array << 'new_value'
# X - array.push('new_value')
# hash['new_key'] = 'new_value'
movie_ratings['batman'] = 8


# Update (the same as create)
# hash['existing_key'] = 'new_value'
movie_ratings['batman'] = 10

# Delete
# X - array.delete_at(index)
# X - array.delete('value')
# hash.delete(key)
movie_ratings.delete('matrix')

# Symbols
# reserved for keywords / lookup reference
# :lower_snake_case
'name'.to_sym
:name.to_s

# tokyo = {
#   'country' => 'Japan',
#   'population' => 30000000
# }


# old notation / # updated in Ruby 1.9
tokyo = {
  :country => 'Japan',
  :population => 30000000
}

# new notation
tokyo = {
  country: 'Japan',
  population: 30000000
}
# if you use a string, hash rocket
# if you use a symbol, drop the rocket

kyoto = {
  'country' => 'Japan',
  'population' => 1500000
}

# when we read, colon always on left of symbol
# when we create, colon always on left of symbol
# when we update, colon always on left of symbol
tokyo[:population] = 30000001

"Tokyo is in #{tokyo[:country]}, with a population of #{tokyo[:population]}"

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

# array.each do |element|
#   # do something to element
# end

# hash.each do |key, value|
# do something to the key and/or value
# end

movie_ratings.each do |name, rating|
  "#{name.capitalize}: #{rating}"
end

# hash methods
movie_ratings.count
movie_ratings.keys # => array of keys
movie_ratings.values # => array of values
movie_ratings.key?('godfather')
movie_ratings.key?('superman')
movie_ratings.value?(10)

# rated_ten = {}
# movie_ratings.each do |name, rating|
#   # if it's a ten.. then put inside new hash
#   if rating == 10
#     # create hash[key] = value
#     rated_ten[name] = rating
#   else
#     # else ignore it
#   end
# end

# EXACT same as .select
rated_ten = {}
movie_ratings.each do |name, rating|
  rated_ten[name] = rating if rating == 10
end

# hash.select => new hash
# if true, it'll select. if false, ignore
rated_ten = movie_ratings.select do |name, rating|
  # we need to give it a condition true/false
  name.start_with?('cats') && rating == 0
end

number_of_ten = movie_ratings.count do |name, rating|
  # we need to give it a condition true/false
  rating == 10
end

# .each => original
# .select => new {}
# .count => integer

# EXTRA HOMEWORK
# Farmer's Market
# item: price
items = {
  carrots: 100,
  onions: 50,
  tomatoes: 70,
  potatoes: 80
}
# cart = {}

# ask the user what they'd like to buy (puts / gets)
# ask the user how many they'd like to buy (puts / gets)
# add the item and the quantity into your cart
# loop until the customer says 'quit'
# display the items and total price
#
