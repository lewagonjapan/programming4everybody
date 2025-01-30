# Hash CRUD
# Hash
# Also called object, dictionary, struct in other programing languages
# Just like arrays hashes allow us to store a collection of data
# Arrays are a "simple" list of elements
# Are little bit more complex where each element is labeled with a key ( index in an array)
# Each key has a value and they forme a key , value pair


fruits_basket = {
  'banana' => 500,
  'apple' => 200,
  'orange' => 300,
  'pear' => 200,
  'kiwi' => 1500,
}



fruits_basket

## important notes
# Hashes are defined with curlies {}
# => is called a hash rocket
# Key , Value pair
# The keys have to be *unique*
# the keys and values can "technically" be of any datatype
# Strings and Symboles are preferred for keys

fruits_basket = {
  'banana' => 500,
  'apple' => 200,
  'orange' => 300,
  'pear' => 200,
  'kiwi' => 1500,
}

# Crud
# Read from a hash
# hash[key]
fruits_basket['banana']

fruits_basket['pineapple'] # nil because it does not exist

## some advanced hash methods
fruits_basket.keys # will return an array with all the keys
fruits_basket.values # will return an arra with all the values
fruits_basket.key?("banana") # true
fruits_basket.key?("pineapple") # false

# update
# hash[key] = new_value

fruits_basket['banana'] = 1500
fruits_basket

# create
# hash[key] = value
fruits_basket['pineapple'] = 900

# The syntax for the update and create are the same
# If the key exists its going to return it
# If not its going to create it and then return it
# ( create key value and return the value )

# delete
# hash.delete(key_to_delete)
fruits_basket.delete("banana")
fruits_basket

# Symbols ( New DATA type )
# like string but slightly different
# String: reprsent text
# Symbol also represent text

"Hello"
:hello

# WHY  use symbole over string

# Mutability ( keeps keys as are)
# string is mutable
# Symbols immutable
string = "Hello?"
string[-1] = "!"
string

sym = :hello

# It's the convention we need to follow the convention

# Performance ( advanced )
"hello" == "hello" # true
:hello == :hello # true

# .object_id => returns the address of the data in the memory (id)
# "hello".object_id
"hello".object_id == "hello".object_id  # false
:hello.object_id == :hello.object_id # true

fruits_basket1 = {
  :banana => 500,
  :apple => 200,
  :orange => 300,
  :pear => 200,
  :kiwi => 1500,
}
fruits_basket1[:banana]

fruits_basket2 = {
  banana: 500,
  apple: 200,
  orange: 300,
  pear: 200,
  kiwi: 1500,
}
fruits_basket2[:banana]

# hash methods
# .each
fruits_basket.each do |key, value|
  # puts "#{key.capitalize} costs #{value} today!"
end

# .map
my_array = fruits_basket.keys.map do |key|
  # do something
end

# .select
expensive_fruits = fruits_basket.select do |_, price|
  price >= 500
end
p expensive_fruits

