# Hash CRUD
# Hashes
# Objects, dictionaries, structs, maps
# * Array is a list of elements (usually simple
# hash is a more complexe datatype -> collection of elements

# Notes:
# A hash is defined with culy brackets / braces
# List of key / value pairs
# Keys and value can be of ANY datatype
# Usually keys in hash will always be strings or symbols
# Keys in a hash have to be UNIQUE ( no duplicates )
# *=>* hash rocket


movies_list = [["batman", 10], ["antman", 5], "superman", "spiderman", "ironman"]
# movies_list = Hash.new
movies_list = {
  "batman" => 10,
  "antman" => 5,
  "superman" => 7,
  "spiderman" => 6,
  "ironman" => 1
}

# CRUD
# Read
# hash[key]
movies_list["antman"]
p movies_list["cats"] # nil

# Update
# hash[key] = new_value
movies_list["ironman"] = 10

# Create
# hash[key] = value
movies_list["matrix"] = 11

# if the key exists in the hash ruby is going to update its value
# if the key does not exist in the hassh ruby is going to create one and assign the value to it

movies_list["cats"] # will do nothing

# Be carefule not to override existing keys in a hash
# movies_list = {
#   "batman" => 10,
#   "antman" => 5,
#   "superman" => 7,
#   "spiderman" => 6,
#   "ironman" => 1,
#   "batman" => 3,
# }


# Delete
# hash.delete(key)
movies_list.delete("ironman")
# p movies_list

# Symbols
# Like strings but they are not a actual strings

'name' # string
:name # symbol

# Strings represent texts in ruby ( or any programming lang )
# Symbole is used as an identifier

# why
# Immutability ( cant change )
name = "soufiane"
name[-1] = "!"
# p name

name = :name
name[0] = "@"  # This is not allowed

# Performance
"soufiane" == "soufiane" # true
"soufiane".object_id == "soufiane".object_id # false
name1 = "soufiane"
name2 = "soufiane"

:soufiane == :soufiane # true
:soufiane.object_id == :soufiane.object_id # true


city = {
  "name" => "Tokyo",
  "population" => 14_000_000, # 14000000
  "country" => "Japan",
}

# symbole with hash rocket
city = {
  :name => "Tokyo",
  :population => 14_000_000, # 14000000
  :country => "Japan",
}

# p city[:name]

# symbol without hash rocket
city = {
  name: "Tokyo",
  population: 14_000_000, # 14000000
  country: "Japan",
}

# p city[:population]


# hash methods
#.each

movies_list.each do |movie, rating|
  # puts "#{movie} was given a rating of #{rating}1"
end

# alternative to the select
good_movies = Hash.new
movies_list.each do |movie, rating|
  # if rating >= 6
  #   good_movies[movie] = rating
  # end
  #
  good_movies[movie] = rating if rating >= 6 # single line if statement
end

movies_list.each { |movie, rating| good_movies[movie] = rating if rating >= 6  } # single liner

#.select

good_movies = movies_list.select do |_, rating|
  rating >= 6
end
 good_movies

movies_list.count # how many key / value pairs in the hash
movies_list.keys # returns an array of all the keys in the hash
movies_list.values # returns an array of all the values in the hash
movies_list.key?("godfather")
movies_list.key?("superman")
movies_list.value?(10)