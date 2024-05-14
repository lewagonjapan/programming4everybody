
### Arrays
# recap Arrays
[].class
students = ["pierre", "ali", "yuta", "svitlana", "anamol"]
# Index =>      0       1       2        3          4

# CRUD
# Create => adding into an array
# array << element
students << "debora" # shovel operator
# array.push(element)
# students.push("flavien")

# Read
# array[index]
students[0]
#  last element of an array
students[-1]
# first 3 elements of an array
students[0..2]
# read the indext of a student
students.index("ali")

# IF I TRY TO READ AN ELEMENT WITH AN INDEX THAT DOES NOT EXIST
students[10] # => nil
students.index("soufiane") # => nil

# Update
# array[index] = element
# students[0] = "soufiane"
# students[-1] = "svitlana"

# DELETE
# array.delete(element)
students.delete("ali")
# array.delete_at(index)
students.delete_at(-1)
students