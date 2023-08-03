# Hashes and symboles.
# HASHES
# Just like arrays hashes allow us to store a collection of data
# An array is a *simple* collection of data, hashes a re a more *complexe* collection of data
# Array: I can access the element using its index
# hashes: I can acces the element using a Key
# In a hash each element is labeled with a keyword => key / Pair of Key / value

fruit_basket = {
  'banana' => 30,
  'kiwi' => nil,
  'apple' => 100,
  # 'banana' => 400
}

# Important Notes
# hash is delimited with curlies {}
# => called a hash rocket
#  in this example the keys are strings and the values are integers
#  they can really can be of any data type

# CRUD

# Read
# hash[key]
fruit_basket["banana"]

  # advanced red methods
  fruit_basket.keys # => an array of all the keys
  fruit_basket.values # => an array of all the values
  fruit_basket.key?('kiwi') # => return true if the key kiwi exists in the hash

# Update
# hash[key] = new_value
fruit_basket['kiwi'] = 500

# Create
# hash[key] = value
fruit_basket['orange'] = 100

# Delete
# hash.delete(key)
fruit_basket.delete('banana')
# p fruit_basket

# SYMBOLS === New Data type
# Symbol are like strings
# they are the prefered way to define keys (in hashes)

# Mutalibility is the ability for an object to mutate / change / to be modified
# 12.object_id # => address in memory

:name

city = {
  'name' => 'Tokyo',
  'population' => 14_000_000,
  'country' => 'Japan'
}

city = {
  :name => 'Tokyo',
  :population => 14_000_000,
  :country => 'Japan'
}

city = {
  name: 'Tokyo',
  population: 14_000_000,
  country: 'Japan'
}

# How we interact with the hash changes when using symbols as keys
city[:population]

# Why use symbols instead of strings
# 1. the notation is easier
# 2. efficiency
# 3. it's the convention

# 'soufiane' == 'soufiane' # => true
# :soufiane == :soufiane # => true

# 'soufiane'.object_id == 'soufiane'.object_id # => false
# :soufiane.object_id == :soufiane.object_id # => true

fruit_basket = {
  'banana' => 30,
  'kiwi' => 200,
  'apple' => 100,
}

# iterators
# .each
fruit_basket.each do |fruit, price|
  # puts "- #{fruit}: #{price} Yen"

end

# .select
expansive_fruits = fruit_basket.select do |_, price|
  price >= 100
end

p expansive_fruits


# Example of a more complexe hash
user = {
  name: 'Anthony',
  age: 25,
  address: {
    country: 'Japan',
    city: 'Osaka',
    street: 'something'
  },
  hobbies: ['swiming', 'fishing', 'hiking'],
}

pp user


# an array of hashes
users = [
  {
    name: 'Anthony',
    age: 25,
    address: {
      country: 'Japan',
      city: 'Osaka',
      street: 'something'
    },
    hobbies: ['swiming', 'fishing', 'hiking'],
  },
  {
    name: 'soufiane',
    age: 27,
    address: {
      country: 'Japan',
      city: 'Tokyo',
      street: 'something'
    },
    hobbies: ['gaming', 'fishing'],
  },
  {
    name: 'Noah',
    age: 26,
    address: {
      country: 'Japan',
      city: 'Osaka',
      street: 'something'
    },
    hobbies: ['swiming', 'fishing', 'hiking'],
  }
]

# users.each do |user|
#   puts "#{user[:name]} is #{user[:age]} years old and likes #{user[:hobbies].join(', ')}"
# end

osaka_users = users.select do |user|
  # user[:address][:city] == 'Osaka'
  # user[:hobbies].include?('swiming')
end

p osaka_users
