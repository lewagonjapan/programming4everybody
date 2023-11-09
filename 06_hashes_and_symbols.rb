# Hash CRUD
# Hashes are a more complexe collection where each element of the hash
# is identified by a key and each key has a value associated with it.
# Key , value pair

fruit_basket = {
  'banana' => 50,
  'kiwi' => 200,
  'apple' => 200
}

# p fruit_basket['apple']['large']

# important notes
# hashes are delimited by curly brackets {}
# => hash rocket
# in this example the keys are strings and values are integers
# in general keys and values can be of any datatype
# The keys in a hash have to be unique

# CRUD
# READ
# hash[key]
fruit_basket['kiwi']

# Update
# hash[key] = new_value
fruit_basket['banana'] = 100
# p fruit_basket

# Create
# hash[key] = new_value
fruit_basket['orange'] = 150
# p fruit_basket

# the syntac is the same for updating and creating
# if the key exists the value will be updated
# if they key does not exist it will be created

# Delete
fruit_basket.delete('kiwi')
# p fruit_basket

## ==== Symbol ===== (New data type yaaay)
# Symbols are just like strings

# strings:
# Mutable
str = "David"
str[-1] = "s"
p str

# Symbol
# Immutable

#:name_of_symbol

city = {
  'name' => "Tokyo",
  'population' => 14_000_000, # 14000000
  'country' => 'Japan'
}

# rewrite the city hash using symbole

city = {
  :name => 'Tokyo',
  :population => 14_000_000, # 14000000
  :country => 'Japan'
}

# p city[:name]

# lets rewrite the city again using the the commun notation
city = {
  name: 'Tokyo',
  population: 14_000_000,
  country: "Japan"
}

p city[:population]

# Why do we prefer symbols over strings ???
# 1. the notation is easier to write
# 2. Because its the convention
# 3. Efficiency (Advanced)

"Glen" == "Glen" #=> true
:glen == :glen #=> true

"Glen".object_id == "Glen".object_id
:glen.object_id == :glen.object_id
# We are actually comparing object identity, not content

# :glen == glen: #=> syntax error


fruit_basket = {
  banana: 50,
  kiwi: 200,
  appel: 200
}

# hash iterators
# array.each do |element|

# hash.each do |key, value|
fruit_basket.each do |fruit, price|
  puts "#{fruit} costs: $#{price}."
end

# hash.select
pricy_fruits = fruit_basket.select {|_, price| price  >= 200 }
p pricy_fruits