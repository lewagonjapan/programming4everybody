# Hash CRUD

# Hashes
# Called object, dictionaries, structus, map ... in other programming languages
# Collections of data structured in a specific way
# A Hash is define using "Curly braces" {}
# Each hash element is a key / value pair
# => hash rocket comes between the key and value
# The keys and values of a hash can be of "any" datatype
# Usually the keys are going to be either strings or a symbols
# Keys have to unique in the same hash


movie_list = {
  "godfather" => 10,
  "parasite" => 10,
  "matrix" => 9,
  "cats" => 8,
}

user1 = {
  "first_name" => "Raphael",
  "last_name" => "Barbosa",
  "age" => 25,
  "employed" => true,
  "hobbies" => ["fishing", "karaoke"],
  "address" => {
    "city" => "Paris",
    "street" => "5th street",
  }
}

user2 = {
  "first_name" => "Julia",
  "last_name" => "M",
  "age" => 23,
  "employed" => true,
  "hobbies" => ["karate", "guinea pigs"],
  "address" => {
    "city" => "Tokyo",
    "street" => "nakahara kaido",
  }
}

# an array of hashes
users = [user1, user2]

movie_list

# CRUD
# Read
# hash[key]
# p movie_list["godfather"]
movie_list["something"] # nil

# Update
# hash[key] = new_value
movie_list["cats"] = 10

# Create
# hash[key] = value
movie_list["inception"] = 11

# Rule: updating and creating into a hash use the same syntax
# if the key exists ruby is going to replace it
# if not it is going to create a new one

movie_list["inception"] = 1000 # this will update the inception movie with the value 1000
# p movie_list

# Delete
# hash.delete(key)
movie_list.delete("godfather")
# p movie_list

# ===== SYMBOLS ===== New DataType yaay
# Symbols also called runes ... in other programming languages
# Similar to strings in the sense that they represent text
# Usually reserved for keywords

string = "Soufiane"
string = 'Soufiane'

# sym
symb = :soufiane

# Mutability
# Symbols are immutable ( they cant change )

string = "Soufiane"
string[-1] = "S"
# p string

# A hash using symbols as keys
movie_list = {
  :godfather => 10,
  :parasite => 10,
  :matrix => 9,
  :cats => 8,
}

# alternative syntax when using symbols as keys
movies_list = {
  godfather: 10,
  parasite: 10,
  matrix: 9,
  cats: 8,
}

movie_list[:parasite]

# Why use symbols as keys
# Notation is easier to write
# Its the convention
# Performance ( advanced concept )

"soufiane" == "soufiane" # => true
:soufiane == :soufiane # => true

"soufiane".object_id # => integer

"soufiane".object_id == "soufiane".object_id # false
:soufiane.object_id == :soufiane.object_id # true


movies_list = {
  godfather: 10,
  parasite: 10,
  matrix: 9,
  cats: 8,
}

# Hash iterators
# .each

movies_list.each do |movie, rating|
  puts "name: #{movie}, Rating: #{rating}"
end


# the order of arguments matter
# def increase_rating(movie, rating)
#   "#{movie} is now rated #{rating + 1}"
# end
#
# p increase_rating("gotfather", 10)
# p increase_rating(10, "godfather")

#.select .filter
ten_movies = movies_list.filter do |_, rating|
  rating >= 10
end

p ten_movies

# Read methods
p movies_list.count # returns how many key/value pairs are in the hash
p movies_list.keys # return an array of the hashes keys
p movies_list.values # return all the values of the hash
p movies_list.values.sum / movies_list.count # gets the average rating
p movies_list.key?(:godfather) # return true if the key exists / false otherwise
p movies_list.value?(3) # retusn true if the value exists in the hash









