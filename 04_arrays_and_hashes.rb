
### Arrays
# An array is defined with square brackets
puts [].class # Empty Array

# Array of Strings
beatles = ["John", "Ringo", "George", "Yoko", "Paul"]

# In an array, we can store any value
nums = [1, 2, 3, 4]
random_array = ["Sylvain", 37, true]
array_of_arrays = [[1, 2], [3,4]]

## CRUD for Arrays
# Create - array_name.push(value) OR array_name << value
beatles.push("Sylvain")
beatles << "Sasha"

# Read - array_name[index]
beatles = ["John", "Ringo", "George", "Yoko", "Paul"]
        #     0       1         2
puts beatles[2] # Reads element at index 2
puts beatles[-1] # Read the last element

# Update - array_name[index] = new_value
beatles[3] = "Sylvain"

# Delete - 2 methods
 # .delete(value) is a method, we use ()
 # Be CAREFUL, .delete deletes ALL values with that name
beatles.delete("Sylvain")
p beatles

# .delete_at(index) takes an index as an argument
beatles.delete_at(0)
p beatles

# Summary: CRUD operations, super super important

#===========

### Hashes

# Hash is defined with {}
new_hash = {}

another_hash = Hash.new(0)



beatles = {
  "John" => "Singer",
  "Ringo" => "Drums",
  "Paul" => "Bass",
  "George" => "Guitar"
}
# For this specific beatles hash:
# - names are the *keys*, instrument are the *values*
# - => is called a hash rocket
# - keys and values are Strings
# - In a hash, keys are unique


# CRUD operations for hashes

# Create - hash_name[key] = value
beatles["Sylvain"] = "Keyboard"

# Read - hash_name[key]
puts beatles["Ringo"]
puts beatles["Ringo"].class # In that case, a String

# Update - Create and Update syntaxes are the same
beatles["John"] = "Singer & Guitar"
p beatles

# Delete - hash_name.delete(key)
beatles.delete("Sylvain")
p beatles




