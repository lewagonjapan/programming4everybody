# Hash CRUD

# An array of arrays, which can be represented more effectively as a Hash.
fruits_store_array = [["apple", 500], ["banana", 300], ["orange", 600]]

# Hashes
# In other programming languages, they might be called objects, dictionaries, or structs.
# Like arrays, hashes allow us to store a list of elements.
# While arrays store single elements (like strings, numbers), hashes store key-value pairs.
# The "=>" is called a "hash rocket".
# Keys and values can be of any data type.
# For keys, we typically use strings or symbols.
# For values, they can be anything (strings, numbers, arrays, even other hashes).
# All keys in a hash must be unique.

# --- Hash Creation and CRUD (Create, Read, Update, Delete) ---

# Creating a hash with string keys.
# If you try to use the same key twice, the last one wins.
fruits_store = {
  "apple" => 500,
  "banana" => 300,
  "orange" => 600,
  # "apple" => 700 # This would overwrite the first "apple"
}

p fruits_store

# --- CRUD Operations ---

# Create: Add a new key-value pair to the hash.
# SYNTAX: hash["new_key"] = "value"
fruits_store["grape"] = 400
puts "After creating 'grape':"
p fruits_store

# Read: Access the value for a given key.
# SYNTAX: hash["key"]
puts "Reading the price of banana:"
p fruits_store["banana"]

# Update: Change the value of an existing key.
# SYNTAX: hash["existing_key"] = "new_value"
# If the key exists, it updates the value. If not, it creates a new pair.
fruits_store["orange"] = 200
puts "After updating 'orange':"
p fruits_store

# Delete: Remove a key-value pair from the hash.
# SYNTAX: hash.delete("key")
fruits_store.delete("banana")
puts "After deleting 'banana':"
p fruits_store


# --- Symbols ---
# Symbols are similar to strings but have some key differences.
name_string = "Soufiane"
name_symbol = :soufiane

# Symbols are defined with a colon ":" followed by text.
# A key difference is that symbols are immutable, meaning they cannot be changed once created.
# Strings are mutable.
name_string = "Aishe"
name_string[-1] = "a" # Changes the last character of the string
puts "Mutable string:"
p name_string

# This would cause an error because symbols are immutable:
# name_symbol[-1] = "a"

# --- Hashes with Symbol Keys ---
# It is the standard convention in Ruby to use symbols as hash keys.
fruits_store_symbols = {
  :apple => 500,
  :banana => 300,
  :orange => 600,
}

# Why use symbols for keys?
# 1. Convention: It's the common practice in the Ruby community.
# 2. Immutability: Protects keys from accidental changes.
# 3. Performance: Symbols with the same name are the same object in memory, which is more efficient.

# For example, two identical strings are different objects in memory:
puts "Object ID of 'soufiane' string vs another 'soufiane' string:"
p "soufiane".object_id == "soufiane".object_id # => false

# But two identical symbols are the same object:
puts "Object ID of :soufiane symbol vs another :soufiane symbol:"
p :soufiane.object_id == :soufiane.object_id # => true


# --- Alternative Hash Syntax (JSON-style) ---
# When using symbols as keys, you can use this cleaner syntax.
fruits_store_new_syntax = {
  apple: 500,
  banana: 300,
  orange: 600,
}

# Accessing a value is still done with the symbol.
puts "Accessing banana with new syntax:"
p fruits_store_new_syntax[:banana]

# --- Hash Iterators ---

# .each: Iterate over each key-value pair.
puts "Iterating with .each:"
fruits_store_new_syntax.each do |fruit, price|
  puts "The price of #{fruit} is #{price}$"
end

# .select: Returns a new hash containing key-value pairs for which the block returns true.
puts "Selecting fruits with price >= 500:"
luxury_fruits = fruits_store_new_syntax.select do |fruit, price|
  price >= 500
end
p luxury_fruits

# --- Other Useful Hash Methods ---
puts "Number of pairs in the hash:"
p fruits_store_new_syntax.count # Returns the count of key/value pairs.

puts "All keys from the hash:"
p fruits_store_new_syntax.keys # Returns an array of all the keys.

puts "All values from the hash:"
p fruits_store_new_syntax.values # Returns an array of all the values.

puts "Does the key :banana exist?"
p fruits_store_new_syntax.key?(:banana) # Checks for the existence of a key.

puts "Does the key :grape exist?"
p fruits_store_new_syntax.key?(:grape)

puts "Does the value 500 exist?"
p fruits_store_new_syntax.value?(500) # Checks for the existence of a value.


# --- Real-world Example: Array of Hashes ---
# This is a very common data structure.
employee_1 = {
  name: "Edsel Edralin",
  age: 25,
  skills: ["ruby", "rails", "javascript", "react"],
  is_certified: true,
  contact: {
    email: "edsel@gmail.com",
    phone: "123-456-7890",
  }
}

employee_2 = {
  name: "Bob Johnson",
  age: 22,
  is_certified: false,
  skills: ["javascript", "HTML", "CSS"],
  contact: {
    email: "bob@example.com",
    phone: "bob_j"
  }
}

employees = [employee_1, employee_2]

# Find all employees who know javascript.
js_employees = employees.select do |employee|
  employee[:skills].include?("javascript")
end

# Get just the names of those employees.
names = js_employees.map do |employee|
  employee[:name]
end

puts "Names of employees who know JavaScript:"
p names

# You can also chain these methods for a more compact (but less readable) version:
# names = employees.select { |emp| emp[:skills].include?("javascript") }.map { |emp| emp[:name] }


### ===== LIVE CODE EXAMPLE: GITHUB API FETCHER ===== ###

# This part of the code will fetch user data from GitHub's API.

# 1. Greet the user and ask for a GitHub username.
# 2. Fetch the data from the GitHub API URL.
# 3. The API returns data in a format called JSON (a string).
# 4. We need to "parse" this JSON string into a Ruby Hash.
# 5. Display some of the user's information from the hash.

# 'open-uri' is a Ruby library that lets us open and read web pages like they are files.
require 'open-uri'
# 'json' is a Ruby library for parsing JSON strings.
require 'json'


puts 'Welcome to our Github Data Reader!'
puts 'What is your Github username?'
print '> '

# Get the username from the user.
username = gets.chomp

# Construct the API URL with the user's provided username.
api_url = "https://api.github.com/users/#{username}"

puts "Retrieving data for #{username} from #{api_url}..."
puts ""
sleep(1) # Pause for 1 second to simulate loading.

# 1. Open the URL and read the response, which is a JSON string.
json_string = URI.open(api_url).read

# 2. Parse the JSON string into a Ruby hash.
user_hash = JSON.parse(json_string)

# 3. Now we can access the data using keys, just like any other hash!
puts "Welcome #{user_hash['name']}, you work for #{user_hash['company']}."
puts "You have #{user_hash['public_repos']} public repositories and #{user_hash['followers']} followers!"
