# Hash CRUD
#
# In other languages, hashes are also called:
#   - dictionaries (Python)
#   - maps (Java, Go)
#   - objects (JavaScript)
#
# Just like arrays, hashes allow us to store a COLLECTION of data.
# Hashes are a more COMPLEX (and more descriptive) collection
# than arrays.
#
# Use an ARRAY when the position matters (an ordered list).
# Use a HASH when you want to give each value a NAME (a label).
#
# ------------------------------------------------------------
# Theory
# ------------------------------------------------------------
# - A hash is defined using CURLY BRACKETS: { }
# - A hash is a collection of KEY-VALUE PAIRS.
# - Keys and values are separated by `=>` (the "hash rocket").
# - Keys and values can be of any data type.
# - Keys are usually STRINGS or SYMBOLS (more on symbols below).
# - Keys in a hash MUST BE UNIQUE.
# - Values have no restriction: they can be duplicates, and of
#   any data type (including other arrays or hashes).

movies_list = {
  'The God Father' => 10,
  'The Matrix' => 9,
  'The Lord of the Rings' => 10,
  'Cats' => 5
}

# p movies_list

# ============================================================
# CRUD OPERATIONS ON HASHES
# (Create, Read, Update, Delete)
# ============================================================

# ------------------------------------------------------------
# READ
# ------------------------------------------------------------
# Access a value by its key: hash[key] => value

p movies_list['The Matrix'] # => 9

# ------------------------------------------------------------
# CREATE
# ------------------------------------------------------------
# Two ways to create an empty hash:
{}.class # => Hash
Hash.new # => {}
#
# Add a new key-value pair to an existing hash:
#   hash[new_key] = value

movies_list['The Lion King'] = 8
# p movies_list

# ------------------------------------------------------------
# UPDATE
# ------------------------------------------------------------
# Same syntax as CREATE — if the key already exists, the value
# is overwritten; if it doesn't, it's added.
#   hash[existing_key] = new_value

movies_list['Cats'] = 6

# ------------------------------------------------------------
# DELETE
# ------------------------------------------------------------
# Remove a key-value pair by its key:
#   hash.delete(key)

movies_list.delete('Cats')
# p movies_list

# ============================================================
# SYMBOLS — a new data type 🎉
# ============================================================
#
# Symbols are like strings in that they represent text,
# but their PURPOSE is different:
#   - STRINGS are used to store and manipulate text
#     (user input, file content, displayed messages, ...).
#   - SYMBOLS are used as IDENTIFIERS or TAGS
#     (hash keys, status flags, internal labels, ...).
#
# Syntax: a symbol starts with a colon `:`

name = 'soufiane' # a string
sym = :soufiane # a symbol

# ------------------------------------------------------------
# Difference 1: Immutability
# ------------------------------------------------------------
# Strings are MUTABLE — they can be modified in place.
# Symbols are IMMUTABLE — they cannot be changed once created.

str = "Hello, "
# p str + "World"
str[-1] = "" # works: we modify the string in place
str[-1] = "" # works again
# p str

sym = :hello
# p sym[-1]
# sym[-1] = ""      # => ERROR — symbols cannot be modified

# ------------------------------------------------------------
# Difference 2: Uniqueness (advanced)
# ------------------------------------------------------------
# Two strings with the same content are EQUAL but NOT the
# SAME object in memory — Ruby creates a new object each time.
# Two symbols with the same name are the SAME object in memory.
#
# `object_id` returns a unique ID for each object in memory.

"Louis" == "Louis" # => true  (same content)
:Louis == :Louis # => true  (same content)

p "Louis".object_id == "Louis".object_id # => false (two different objects)
p :Louis.object_id == :Louis.object_id # => true  (same object)

# Why this matters: symbols are MORE MEMORY-EFFICIENT.
# This is why they're the preferred choice for hash keys.

status = :active

# ============================================================
# HASHES WITH SYMBOL KEYS
# ============================================================
#
# When the keys are symbols, Ruby gives us two equivalent syntaxes:

# Old syntax (works for any key type, including strings):
city = {
  :name => "Casablanca",
  :population => 4_000_000,
  :country => "Morocco"
}

# Shorthand syntax (ONLY works when keys are symbols).
# This is the modern, preferred style — looks similar to JSON.
city = {
  name: "Casablanca",
  population: 4_000_000,
  country: "Morocco"
}

# Access still uses the full symbol syntax with the colon in front:
p city[:name]

# ============================================================
# COMMON HASH METHODS
# ============================================================

movies_list = {
  'The God Father' => 10,
  'The Matrix' => 9,
  'The Lord of the Rings' => 10,
  'Cats' => 5
}

# ------------------------------------------------------------
# Iterators
# ------------------------------------------------------------
# .each — iterate over every key-value pair.
# The block takes TWO parameters: the key, then the value.

movies_list.each do |movie, rating|
  # puts "#{movie} has a rating of #{rating}"
end

# .select — keep only the pairs for which the block returns true.
# Returns a NEW hash.
# The underscore `_` is a convention for "I don't need this parameter".
best_movies = movies_list.select do |_, value|
  value >= 10
end

# ------------------------------------------------------------
# Useful info methods
# ------------------------------------------------------------
# .count, .size, .length  → all return the number of pairs (synonyms)
# .keys                   → an ARRAY of the hash's keys
# .values                 → an ARRAY of the hash's values
# .key?(some_key)         → true / false — does this key exist?
# .value?(some_value)     → true / false — does this value exist?

p movies_list.count
p movies_list.size
p movies_list.length
p movies_list.keys
p movies_list.values

# Example: compute the average rating
average_rating = movies_list.values.sum / movies_list.count

p movies_list.key?('The Matrix') # => true
p movies_list.key?('Superman') # => false
p movies_list.value?(0) # => false

# ============================================================
# REAL-WORLD EXAMPLE: AN ARRAY OF HASHES
# ============================================================
#
# Hashes really shine when we need to describe REAL OBJECTS
# (a movie, an employee, a city, ...) — multiple attributes
# grouped together under named keys.
#
# A common pattern is an ARRAY OF HASHES: a list of objects,
# each described by a hash.

employee_a = {
  name: "Alice",
  age: 30,
  skills: ["Ruby", "Javascript", "Python"],
  is_certified: true,
  contact: { # nested hash
             email: "alice@lewagon.com",
             phone: "123-456-7890"
  }
}

employee_b = {
  name: "Bob",
  age: 25,
  skills: ["Javascript", "C#", "Go"],
  is_certified: false,
  contact: {
    email: "bob@lewagon.com",
    phone: "987-654-3210"
  }
}

employee_c = {
  name: "Charlie",
  age: 35,
  skills: ["Ruby", "Java", "Python"],
  is_certified: true,
  contact: {
    email: "charls@lewagon.com",
    phone: "555-555-5555"
  }
}

employees = [employee_a, employee_b, employee_c]

# ------------------------------------------------------------
# Querying the data
# ------------------------------------------------------------

# Get all certified employees:
certified_employees = employees.select do |employee|
  employee[:is_certified] == true
  # Could be written more concisely as: employee[:is_certified]
end
# pp certified_employees

# Get all employees who know JavaScript:
javascript_developers = employees.select do |employee|
  employee[:skills].include?("Javascript")
end

# From those employees, extract just their names:
js_dev_names = javascript_developers.map do |employee|
  employee[:name]
end

# ------------------------------------------------------------
# Method chaining
# ------------------------------------------------------------
# We can CHAIN .select and .map together to do both operations
# in a single expression. This is a very common Ruby pattern.

javascript_developer_names = employees.select { |employee| employee[:skills].include?("Javascript") }.map { |employee| employee[:name] }

p javascript_developer_names









