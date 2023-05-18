# # Hash CRUD

## HASHES
# **What is a hash?
# **In some other languages they are called dictionaries or objects
# Just like arrays hashes allow us to store a collection of data
# Arrays are simple collections where each element can be accessed by its index
# **Hashes are more complex collections where each element is labeled with a "Keyword"
# We call key, associated with value
# ** Key value pairs

fruit_basket = {
  'banana' => 50,
  'kiwi' => 200,
  'apple' => 100
}

## important notes
# hashes are delimited with curlies {}
# => is called a hash rocket
# in this example keys are strings and values are integers
# in general keys and values can be of any data type


# # CRUD

# Read
# hash[key]
fruit_market['banana']

## advanced read methods
  fruit_basket.keys # => array of all the keys
  fruit_basket.values # => array of all the values
  fruit_basket.key?('orange')

# update
# hash[key] = new_value
fruit_basket['apple'] = 150

# create
# hash[key] = some_value
# the syntax is the same as update
# hash[key] is the key exists in the hash it is going to update it
# if the key does not exist it will ceate one
fruit_basket['orange'] = 250

# delete
fruit_basket.delete('kiwi')

# example of a slightnly more complexe hash
user = {
  'email' => 'user@me.com',
  'password' => 'secret',
  'hobbies' => ['fishing', 'football'],
  'address' => {
    'city' => 'Tokyo',
    'street' => 'some street'
  }
}

# To get the user's city
p user['address']['city']


## ===== SYMBOLS ===== New DataType yaaay
## Symbols are just like strings
## usually reserved for keywords

## Mutability is the ability for an object to change.
## In the case of a string, you can add to, or remove from the string.
## And thus immutable means once you create it, it can never be changed.

:name
str = "Hello!"
str[-1] = '?'
p str

# symbols being immutable makes them idea as hash keys

city_one = {
  'name' => 'Tokyo',
  'population' => 14_000_000,
  'country' => 'Japan'
}

# lets rewite this with symbols
city_one = {
  :name => 'Tokyo',
  :population => 14_000_000,
  :country => 'Japan'
}

city_one = {
  name: 'Tokyo',
  population: 14_000_000,
  country: 'Japan'
}

city_one[:name]

# :first_name

# Why use symbols instead of strings

# 1- because its the convention
# 2- because they are easier to write
# 3- they are more efficient

# ## Iteration of hashes
fruit_basket.each do |key, value|
  # puts "-#{key}: #{value} JPY"
end

fruit_basket.each_with_index do |(key, value), index|
  # puts "#{index + 1}- #{key}: #{value} JPY"
end

expansive_fruits = fruit_basket.select { |_, price| price >= 100 }

# p expansive_fruits
