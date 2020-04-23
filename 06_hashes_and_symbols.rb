# Collections recap

# 1. *Arrays*

# Create
beatles = ["John", "Paul", "George", "Ringos"]
# also Array.new to create an empty one (less common)

# Read
puts beatles[0] # => John
puts beatles[1] # => Paul
puts beatles[5] # => nil, because it doesn't exist!
# or in a loop:
beatles.each { |beatle| puts beatle }

# Update
beatles[3] = "Ringo"

# Delete
beatles.delete_at(2)
puts beatles

# 2. *Hashes*

# Create
beatles = {
  "singer" => "John",
  "guitarist" => "Paul",
  "bassist" => "George",
  "drummer" => "Ringos"
}
# also Hash.new to create an empty hash (less common)

# Read
puts beatles["singer"]
puts beatles["guitarist"]
puts beatles["pianist"] # => nil, because it doesn't exist! I could specify a different default value when I create the hash just if I use Hash.new("a default value")
# or in a loop:
beatles.each do |role, name|
  puts "The #{role} is #{name}"
end

# Update
beatles["drummer"] = "Ringo"

# Delete
beatles.delete("bassist")
puts beatles

##############################

# *Symbols*
# just another data type, used mainly to "label" something (so perfect for hash keys!)

my_symbol = :gabriele
puts my_symbol
puts my_symbol.class # => Symbol

# Convert strings to symbols
names = ["gabriele", "mariana", "shannon"]
names.each do |name|
  puts name.to_sym
end

# Let's refactor the beatles!

# Create
beatles = {
  singer: "John",
  guitarist: "Paul",
  bassist: "George",
  drummer: "Ringos"
}

# Read
puts beatles[:singer]
beatles.each do |role, name|
  puts "The #{role} is #{name}"
end

# Update
beatles[:drummer] = "Ringo"

# Delete
beatles.delete(:bassist)
puts beatles

#############################

# Bonus: the select/filter method (different name, same method!)
# use it to filter records from a collection

# With an array
numbers = [-12, 334, 0, 31, -91, -11, 28]
positive_numbers = numbers.filter { |n| n > 0 }
puts positive_numbers

# With an hash
movie_ratings = {
  pulp_fiction: 5,
  memento: 4.5,
  parasite: 4,
  the_matrix: 4.5,
  truman_show: 4,
  full_metal_jacket: 5
}
my_top_movies = movie_ratings.filter { |movie, rating| rating == 5 }
puts my_top_movies

#################################

# Other hash methods
# there are a lot of powerful methods for hashes! Check them all on ruby-doc.org

movie_ratings = {
  pulp_fiction: 5,
  memento: 4.5,
  parasite: 4,
  the_matrix: 4.5,
  truman_show: 4,
  full_metal_jacket: 5
}

# Loop through the keys
movie_ratings.each_key do |movie|
  puts movie
end
# same as
movie_ratings.keys.each do |movie|
  puts movie
end

# Loop through the
movie_ratings.each_value do |rating|
  puts rating
end
# same as
movie_ratings.values.each do |rating|
  puts rating
end
