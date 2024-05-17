# Hash CRUD

# HASHES
# **What is a hash?
# **In some other languages they are called dictionaries or objects
# Just like arrays hashes allow us to store a collection of data
# Arrays are simple collections where each element can be accessed by its index
# **Hashes are more complex collections where each element is labeled with a "Keyword"
# We call key, associated with value
# ** Key value pairs

fruit_basket = {
  'banana' => 50,
  'kiwi' => 50,
  'apple' => 100
}

## important notes
# hashes are delimited with curlies {}
# => is called a hash rocket
# in this example keys are strings and values are integers
# in general keys and values can be of any data type
# Keys have to be unique

# CRUD
# Read

# hash[key]
fruit_basket['banana']

  # Advanced read methods
fruit_basket.keys # this return an array of the hashes keys
fruit_basket.values # this will return an array of the hashes values
fruit_basket.key?('orange') # this will return true or false if the key existsd

# update
# hash[key] = new_value
fruit_basket['banana'] = 75

# create
# hash[key] = new_value
fruit_basket['orange'] = 175

# delete
# hash.delete(key)
fruit_basket.delete('kiwi')
fruit_basket


# Symbol
# ===== SYMBOLS ===== New DataType yaaay
## Symbols are just like strings
## Strings : Strings are used to store and manipulate text.
## usually reserved for keywords

# string
"soufiane"
'soufiane'

# symbole
:soufiane

# Mutability (is the ability to change)
# strings are mutable
str = "Hello!"
str[-1] = "?"
p str

# symbols are immutable
sym = :soufiane

# symbols are UNIQUE
# same string have different momory adress
str1 = "soufiane"
str2 = "soufiane"
str2.object_id == str2.object_id # false

# p str1.object_id
# p str2.object_id

#  same symbole has the same memory adress
sym1 = :soufiane
sym2 = :soufiane

sym1.object_id  == sym2.object_id # true
p sym1.object_id
p sym2.object_id

fruit_basket = {
  'banana' => 50,
  'kiwi' => 50,
  'apple' => 100
}

# hash with symbols as keys
fruit_basket = {
  :banana => 50,
  :kiwi => 50,
  :apple => 100
}
# to perform CRUD operation on a hqash with symbols as keys
# we use the symbols to identify the pairs
fruit_basket[:banana]

# better way to define hashes
fruit_basket = {
  banana: 50,
  kiwi: 75,
  apple: {
    large: 100,
    small: 50
  }
}

fruit_basket
# p fruit_basket[:apple][:medium]

city = {
  name: 'Tokyo',
  population: 14_000_000,
  country: 'Japan',
  wards: ['shinagawa', 'shinjuku'],
  inhabitants: [
    {
      name: 'soufiane',
      age: 34
    },
    {
      name: 'ali',
      age: 25,
    }
  ]
}

# city[:inhabitants].each do |inhabitant|
#   puts "Citizen #{inhabitant[:name]} is #{inhabitant[:age]}"
# end
# fruit_basket = {
#   banana: {
#     large: 100,
#     small: 50
#   },
#   kiwi: {
#     large: 100,
#     small: 50
#   },
#   apple: {
#     large: 100,
#     small: 50
#   }
# }
fruit_basket = {
  :banana => 50,
  :kiwi => 50,
  :apple => 100
}

# Hash methods
#.each

#  hash .each method will have 2 parameters key and value
fruit_basket.each do |fruit, price|
  # p "#{fruit} is #{price}"
end
# p fruit

# .select
expansive_fruits = fruit_basket.select { | k, v| v >= 75 }

# expansive_fruits

# Pseudocode
# Let's play with Gitgub API

# Be able to open a link (send a request to a link)
# be able to read the content of the response
# Prase ( transforme) the response into something ruby can understand
# play with it

require('open-uri')

require('json')

puts 'Welcome to our Github Data Reader!'
puts 'What is your Github username?'
print '> '

user_name = gets.chomp

json = URI.open("https://api.github.com/users/#{user_name}").read

user_hash = JSON.parse(json)

puts "retrieving data..."
sleep(1)

puts "Welcome #{user_hash["login"]}, We know that you work for #{user_hash["company"]}!"
puts "you have #{user_hash["public_repos"]} public repositories, and #{user_hash["followers"]} followers"

