# Hash CRUD

# What are hashes?
# Known as dictionaries, objects, maps, or structs in other programming languages
# A hash is made out of key / value pairs
# Each key is separated from its value using a hash rocket (=>)
# Key / value pairs need a comma at the end if we want to add more after them
# Keys and values can be of any data type (String, Symbol, Integer, Array, ...)
# Keys have to be unique -> if you reuse a key, the last value wins
# Values can be repeated freely

# {}.class # Hash

movies = {
  'godfather' => 10,
  'parasite' => 10,
  'matrix' => 9,
  'cats' => [],
}

# CRUD
# Create
# hash[new_key] = new_value
movies['gladiator'] = 11

# Read
# hash[key] returns the value (or nil if the key does not exist)
# p movies['godfather']  # 10
# p movies['john-wick']  # nil

# Update
# hash[key] = new_value
movies['cats'] = 4

# VERY IMPORTANT
# If the key already exists, Ruby updates its value
# If the key does not exist, Ruby creates a new key / value pair
# (this is why Create and Update use the exact same syntax)

# Delete
# hash.delete(key)
movies.delete('gladiator')
movies.delete('john-wick') # no-op: returns nil, the hash is unchanged

# Symbols
# Like strings, a symbol represents text
# Strings are used to store and manipulate text -> their content matters and can change
# Symbols are used as fixed identifiers: labels, name tags, hash keys

string = 'Soufiane'
sym = :soufiane

# We write symbols in lower_snake_case, with a leading colon
# Using symbols as hash keys is the Ruby convention -> just get used to it

# Mutable vs Immutable data types
# Symbols are immutable => they can't change; the same symbol stays the exact
# same object for the whole life of the program

# Performance / equality
"soufiane" == "soufiane" # true => Ruby compares the two strings character by character
:soufiane == :soufiane   # true => Ruby just checks it is the same single object (faster)

# .object_id returns a unique identifier for an object in memory
# Every time you write the same string literal, Ruby builds a brand new object
"soufiane".object_id != "soufiane".object_id # true => two different objects
# The same symbol always points to the exact same object
:soufiane.object_id == :soufiane.object_id   # true => one shared object
# This is why using symbols as keys is lighter on memory and faster to look up

p string                          # "Soufiane"
string = string + ' ' + "ezzine"
p string                          # "Soufiane ezzine"
string[0] = "K"                   # strings are mutable => we can change them in place
p string                          # "Koufiane ezzine"

movies = {
  :godfather => 12,
  :matrix => 9,
  :parasite => 10,
  :cats => 4,
}

# Shorthand notation: when the key is a symbol, `key:` means the same as `:key =>`
movies = {
  godfather: 10,
  matrix: 9,
  parasite: 10,
  cats: 4,
}

# `movies` now points to the hash above (built with the shorthand notation)
pp movies[:godfather] # 10

# Hash iterators

# .each -> run a block for every key / value pair
movies.each do |movie, rating|
  puts "The movie #{movie} was rated #{rating} ⭐️"
end

# .select -> keep only the pairs for which the block returns true
# returns a new hash
best_movies = movies.select do |_, rating| # `_` means "we don't use the key here"
  rating >= 10
end

p best_movies

movies.count           # returns the number of key / value pairs
movies.keys            # array of keys
movies.values          # array of values
movies.key?(:godfather) # returns true if the key exists
movies.value?(9)       # returns true if the value exists

# Working with an array of hashes

# 1. Yohei Yamada
person_a = {
  name: "Yohei Yamada",             # String
  age: 22,                          # Integer
  is_certified: false,              # Boolean
  skills: ["Ruby", "Rails", "SQL"], # Array of Strings
  contact: {                        # Nested Hash
    email: "yohei@example.com",
    phone: "555-1234"
  }
}

# 2. Bob Johnson
person_b = {
  name: "Bob Johnson",                  # String
  age: 22,                              # Integer
  is_certified: true,                   # Boolean
  skills: ["JavaScript", "HTML", "CSS"], # Array of Strings
  contact: {                           # Nested Hash
    email: "bob@example.com",
    phone: "bob_j"
  }
}

# 3. Charlie Brown
person_c = {
  name: "Charlie Brown",                                # String
  age: 45,                                              # Integer
  is_certified: false,                                  # Boolean
  skills: ["Project Management", "Agile", "Budgeting"], # Array of Strings
  contact: {                                            # Nested Hash
    email: "charlie@example.com",
    phone: "Room 401"
  }
}

# 4. Diana Prince
person_d = {
  name: "Diana Prince",                     # String
  age: 19,                                  # Integer
  is_certified: true,                       # Boolean
  skills: ["Python", "Data Analysis", "Ruby"], # Array of Strings
  contact: {                                # Nested Hash
    email: "diana@example.com",
    phone: "B-10"
  }
}

employees = [person_a, person_b, person_c, person_d]

# Keep only the employees whose :is_certified value is true
certified = employees.select do |employee|
  employee[:is_certified] == true
end

p certified

# Chain the iterators: first select the employees we want, then map to the data we need
ruby_skilled = employees.select do |employee|
  employee[:skills].include?("Ruby")
end

names = ruby_skilled.map do |employee|
  employee[:name]
end

p names
