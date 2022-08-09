### Arrays

# Arrays are created with square brackets
empty_array = []
array = [1, 2, 3]

# Ruby doesn't care about the data types in the array
array = [1, 'hello', [], 1, 2]

# we access the information inside of an array using the index
students = ['michael', 'shiori', 'paloma', 'marco', 'sarah']
# index         0         1         2         3         4

# CRUD - basic operations that you can do to a database

# Create
# Theory: array.push('leah')
# Theory: array << 'leah' (places the new value at the end)
# students.push('leah')
students << 'leah'

# Read
# Theory: array[index]
students[0]
# read the last one in the array
students[-1]
# return nil for an index that doesn't exist
students[10]
# read the first three name in our array
students[0...2]
# read the index of a student
students.index('marco')

# Update
# Theory: array[index] = new_value
students[0] = 'emily'
students[-1] = 'alex'

# Delete
# Theory: array.delete(value)
# Theory: array.delete_at(index)
students.delete('alex')
students.delete_at(3)
p students
