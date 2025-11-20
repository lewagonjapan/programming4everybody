# ==========================================
# HASHES
# ==========================================

# What is a Hash?
# In other languages, they are called dictionaries, objects, maps, or structs.
# Just like Arrays, they allow us to store a collection of information.
# However, Hashes use a "Key-Value" system (like a dictionary: Word -> Definition).



# ------------------------------------------
# Theory & Syntax
# ------------------------------------------
# 1. Defined using curly braces: { }
# 2. A collection of Key / Value pairs.
# 3. Keys must be UNIQUE within the same hash.
# 4. Keys and Values can be any data type.
#    - Keys: Usually Strings or Symbols.
#    - Values: No restrictions (can be Strings, Ints, Arrays, other Hashes).

# Old Syntax (The "Hash Rocket" =>)
# You will see this in older code or when using Strings / Symbols as keys.
movies_ratings = {
  "godfather" => 10,
  "pulp fiction" => 9.5,
  "lord of the rings" => 9,
  "cats" => 2,
  "twilight" => nil # Value is nil (unknown/empty)
}

# ==========================================
# CRUD (Create, Read, Update, Delete)
# ==========================================

# 1. READ
# -------------------------
# Syntax: hash[key]
# p movies_ratings["godfather"]   # 10
# p movies_ratings["twilight"]    # nil
# p movies_ratings["inception"]   # nil (Key doesn't exist)

# 2. CREATE
# -------------------------
# Create an empty hash
# empty_hash = {}

# Add a new key/value pair
# Syntax: hash[new_key] = value
movies_ratings["inception"] = 9.3

# 3. UPDATE
# -------------------------
# Syntax: hash[existing_key] = new_value
movies_ratings["inception"] = 5
movies_ratings["twilight"] = 4.5

# Note: If the key exists, Ruby updates the value.
#       If the key does NOT exist, Ruby creates it.

# 4. DELETE
# -------------------------
# Syntax: hash.delete(key)
movies_ratings.delete("cats")
# p movies_ratings

# ==========================================
# SYMBOLS (The Preferred Key)
# ==========================================

# Symbols are identifiers (like code names). They look like :this.
# Why use Symbols over Strings for Hash keys?

# 1. Convention: It's the standard Ruby way.
# 2. Immutability: Symbols cannot be changed.
name = "soufiane"
name[0] = "S"    # Strings can be modified.

sym = :soufiane
# sym[0] = "S"   # ERROR! Symbols cannot be modified.

# 3. Performance (Memory Efficiency)
# Every time you use a string, Ruby creates a new object in memory.
# Every time you use a symbol, Ruby points to the same existing object.

puts "--- Memory Test ---"
puts "soufiane".object_id == "soufiane".object_id  # false (Different objects)
puts :soufiane.object_id == :soufiane.object_id    # true (Same object)



# It is faster for Ruby to look up a Symbol key than a String key.

# ------------------------------------------
# Modern Syntax (JavaScript style)
# ------------------------------------------
# When using Symbols as keys, we can put the colon at the end.
# This is cleaner and the most common syntax today.

movies_ratings = {
  godfather: 10,
  pulp_fiction: 9.5,
  lord_of_the_rings: 9,
  cats: 2,
  twilight: 4
}

p movies_ratings[:cats] # We still access it using the colon at the start

# ==========================================
# Hash Iterators & Methods
# ==========================================

# .each
# In a hash, .each gives you TWO variables: the key and the value.
movies_ratings.each do |movie_key, rating_value|
  # puts "The movie #{movie_key} has a rating of #{rating_value}"
end

# .select (Filtering)
# We use _ for variables we don't plan to use (convention).
good_movies = movies_ratings.select do |_, rating|
  rating >= 7
end
# p good_movies

# Useful Methods
# p movies_ratings.count       # How many pairs?
# p movies_ratings.keys        # Returns an array of just keys
# p movies_ratings.values      # Returns an array of just values
# p movies_ratings.key?(:godfather) # boolean
# p movies_ratings.value?(10)       # boolean

# ==========================================
# Advanced: Complex Data Structures
# ==========================================
# This is very common in API responses (JSON).
# We have an Array of Hashes, and some Hashes contain Arrays/Hashes.

person_1 = {
  name: "Soufiane Ezzine",
  age: 30,
  is_certified: true,
  skills: ["Ruby", "JavaScript", "CSS"],
  contact: { email: "soufiane@email.com", phone: "0123456789" }
}

person_2 = {
  name: "Hatice Yildiz",
  age: 28,
  is_certified: false,
  skills: ["Python", "Django", "GoLang", "CSS"],
  contact: { email: "hatice@email.com", phone: "9876543210" }
}

person_3 = {
  name: "Carl Johnson",
  age: 35,
  is_certified: true,
  skills: ["Java", "Spring", "HTML", "CSS"],
  contact: { email: "carl@email.com", phone: "5555555555" }
}

people = [person_1, person_2, person_3]

# Example: Find all certified people
certified_people = people.select do |person|
  person[:is_certified] # Returns true or false
end

puts "--- Certified People ---"
pp certified_people # pp = pretty print (easier to read complex data)

# Example: Get a list of ALL unique skills
# .map returns an array of arrays: [["Ruby", ...], ["Python", ...]]
# .flatten removes the nested arrays
# .uniq removes duplicates
all_skills = people.map { |person| person[:skills] }.flatten.uniq

puts "--- All Unique Skills ---"
p all_skills

# .flat_map (Advanced)
# Performs map and flatten in one step
optimized_skills = people.flat_map { |person| person[:skills] }.uniq
# p optimized_skills