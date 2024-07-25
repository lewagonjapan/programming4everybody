# Hash CRUD
# What is hash ?
# Called objects, structs, maps, dictionary in different languages
# Just like arrays, hashes allow us to store data
# Hash is a more complexe data type

# A hash is always defined with curlies {}
# A hash is made out of key , value pairs
# The keys and values can be of any data type
# the keys of hash have to be unique ***
# => this is called a hash rocket

fruit_basket = {
  'banana' => 200,
  'apple' => 400,
  'pear' => 600,
}

# CRUD

# Read
#hash[key]
fruit_basket['banana']
fruit_basket['apple']

# Advanced read methods
fruit_basket.keys # an array of all the hashe's keys
fruit_basket.values # an array of all the hashes values
fruit_basket.key?('banana')
fruit_basket.key?('kiwi')

# Update
# hash[key] = new_value
fruit_basket['banana'] = 1000

# Create
# # hash[key] = new_value
fruit_basket['kiwi'] # nil
fruit_basket['kiwi'] = 500

# if a key exists in the hash its going to be update
# if not its going to be created

# Delete
# hash.deletr(key)
# fruit_basket.delete('banana')
fruit_basket

# ===== SYMBOLS =====
# Just like strings
# are reserved for keywords

str = "hello"
# a symbol is defined with a column
sym = :hello

# Immutability
# Symbols are immutable cant be changed
# makes them unique
# makes the prefered data type for hashes keys

str = "hello"
# p str # hello
str[-1] = "s"
# p str

city = {
  'name' => 'Tokyo',
  'population' => 14_000_000, #14,000,000
  'country' => 'Japan',
}

city = {
  :name => 'Tokyo',
  :population => 14_000_000,
  :country => 'Japan',
}

# since the symbols are the preffered way to define key for a hash
# a better notation has been created

city = {
  name: 'Tokyo',
  population: 14_000_000,
  country: 'Japan'
}

# if I want to access the values of a hash with symbols i need to use symboles as keys
city[:name] = 'Osaka'

# why symbols instead of strings
# 1 - the notation is easier ( easy to write )
# 2 - because its the convention
# 3 - performance ( why symbols are more performant than strings )  # advanced

# .object_id returns the memory address of the data it was called on.
# p 'name' == 'name'
# p :name == :name

# p 'name'.object_id
# p 'name'.object_id
# p 'name'.object_id
#
# p 'name'.object_id == 'name'.object_id

# p :name.object_id
# p :name.object_id
# p :name.object_id
#
# p :name.object_id == :name.object_id

# hash methods
# .each

fruit_basket.each do |fruit, price|
  # puts "- #{fruit}: #{price}"
end

# .select
pricy_fruits = fruit_basket.select do |fruis, price|
  price >= 600
end
pricy_fruits


new_hash = {}
new_hash.empty?
fruit_basket.empty?


### ===== LIVECODE ===== ###
# Let's play with APIs!

# Greet the user
# ask the user for a username
# request github for the user information
# read the information and parse it (transform it) into a ruby hash
# play with the hash

require 'open-uri'

require 'json'

puts 'Welcome to our Github Data Reader!'
puts 'What is your Github username?'
print '> '

username = gets.chomp

json = URI.open("https://api.github.com/users/#{username}").read

user_hash = JSON.parse(json)

puts 'retrieving data...'
puts ''
sleep(1)
puts "Welcome #{user_hash['name']}! You work for #{user_hash['company']}"
puts "You have #{user_hash['public_repos']} public repositories, and #{user_hash['followers']} followers"









