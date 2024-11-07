# Hash CRUD

# HASHES
# In other programming languages they are called Objects / dictionaries / structs / maps
# Just like array they allow us to store a list of things ( data )
# hashes are a more complexe datatype

fruit_basket = {
  'banana' => 200,
  'apple' => 300,
  'orange' => 400,
}

# p fruit_basket

# Notes to remembers
# hashes are defined with the curlies {}
# a hash has key value pairs
# => is called hash rocket
# Keys / values can be of any datatype but the keys will mostly be strings / symbols
# in hashes the key is used to get the value ( also called attribute )
# Keys in a hash have to be unique

# CRUD
# Read
# hash[key]
p fruit_basket

# advanced hash methods
# p fruit_basket.keys
# p fruit_basket.values
# p fruit_basket.key?('banana')
# p fruit_basket.key?('kiwi')

# Update
# hash[key] = new_value

fruit_basket['orange'] = 1000
p fruit_basket

# Create
fruit_basket['kiwi'] = 600
p fruit_basket

# when creating / updating if the key exists is going to be updated
# if not its going to be created

# Delete
fruit_basket.delete('kiwi')
p fruit_basket


# Symbole ( data type )
# Just like strings
# strings : used when we want to manipulate text
# Symbols are Immutable

"soufiane" # string
:soufiane # symbol

# Why use symbols instead of strings as hash keys

# Immutable ( cant be changed )
name = "Patrick?"
name[-1] = "!"

p name
name2 = :marie?
name2[-1] = "?" # this is not allowed and will throw an error

# Convention ( We follow the convention )
# Performance
"Amanda" == "Amanda" # true
:amanda == :amanda # true

# lets dig deeper
"Amanda".object_id == "Amanda".object_id # false
:amanda.object_id == :amanda.object_id # true


city_one = {
  'name' => "Tokyo",
  'country' => "Japan",
  'population' => 14_000_000 # 14000000
}

city_one = {
  :name => "Tokyo",
  :country => "Japan",
  :population => 14_000_000,
}

p city_one[:population]

# this notation is exactly the same as the one above
city_one = {
  name: "Tokyo",
  country: "Japan",
  population: 12_000_000,
}

p city_one[:name]

# Iterations with hashes

# .each
fruit_basket.each do |fruit, price|
  puts "#{fruit}: #{price}"
end

expensive_fruits = fruit_basket.select do |_, price| # _ is to indicate that the first parameter is not used
  price >= 300
end

p expensive_fruits