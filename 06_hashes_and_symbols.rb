# Recap
students = ['richard', 'racheal', 'simone', 'joyce', 'chris']
# indexes       0           1         2        3        4

# Crud for arrays
# Read
students[1]
students[-1]
students[1..2]
students.index('richard') #=> returns nil if the element does not exist

# create
students << 'ryo'
students.push('mat')

# update
students[1] = 'some new value'

# delete
students.delete('richard')
students.delete_at(2)
# p students

# iterations
# .each # returns the original array
students.each do |student|
  # puts student
end

# .map
upcased_students = students.map do |student|
  student.upcase
end

p upcased_students

# Hash
## In some other languages they are called dictionaries or objects
## hashes are more complex collections of data where each element is labeled by a "keyword" we call a key
## and each key has a value
## Key / Value pair

fruits_market = {
  'banana' => 50,
  'kiwi' => 600,
  'apple' => 100
}

# importants notes
## hashes are delimited with {}
## => is called a hash rocket
## in this exaple keys are strings and values are integers
## in general keys and values can be of any data type
## keys are unique within a hash *****

# Crud
# Read
# hash[key]
fruits_market['banana']

  ## Advanced read methods
  fruits_market.keys # => returns an array of all the keys
  fruits_market.values # => returns an array of all the values
  fruits_market.key?('orange') # => checks if a key exists in my hash

# update
# hash[key] = new_value
fruits_market['banana'] = 100
p fruits_market

# create
# hash[key] = new_value
# the syntax is the same as for update
# if the key exists it updates it
# if the key does not exist it creates a new key / value pair
fruits_market['orange'] = 250

# delete
#hash.delete(key_to_delete)
fruits_market.delete('kiwi')
p fruits_market

# ===== SYMBOLS ===== New DataType yaaay
# Symbols are like strings but different
# usually reserved for keyword

var1 = :banana
var2 = :my_banana

# Symbols are immutable unlike strings, makes unique and very *efficient* in ruby

str = 'Hello!'
str[-1] = '?'
p str
## IS NOT POSSIBLE WITH SYMBOLS each smbol is unique
## Which makes them the perfect choice of hash keys

city_one = {
  'name' => 'Tokyo',
	'population' => 14_000_000,
	'country' => 'Japan'
}

city_one = {
  :name => 'Tokyo',
  :population => 14000000,
  :country => 'Japan'
}

## This notation is so common that a shorter way to write was created

city_one = {
  name: 'Tokyo',
  population: 14000000,
  country: 'Japan'
}

p city_one

## CRUD
#read
city_one[:name]


## WHY DO WE USE SYMBOLS INSTEAD OF STRINGS
## 1- Because its the convention
## 2- its easier to write
## 3- Effeciency (slightly advanced)

'name' == 'name' #=> true
:name == :name #=> true

# lets dig a little deeper
#.object_id
puts 'name'.object_id == 'name'.object_id #=> false
puts :name.object_id == :name.object_id #=> true

# Iteration on hashes
# .each

fruits_market = {
  'banana' => 50,
  'kiwi' => 600,
  'apple' => 100
}

fruits_market.each do |fruit, price|
  puts "- #{fruit}: #{price} JPY"
end

#. each_with_index
fruits_market.each_with_index do |(key, value), index|
  # do sonething with the data
end

# .select
expansive_fruits = fruits_market.select do |fruit, price|
  price >= 200
end

p expansive_fruits


### ===== LIVECODE ===== ###
# Let's play with APIs!

# open the web page
# read its content
# parse the content into a ruby hash
# play with the hash

# Library to open web pages in ruby
require 'open-uri'

# library to turn (parse) json into a ruby hash
require 'json'

puts 'Welcome to Github data reader'
puts 'What is the Github username?'
print '> '

user_name = gets.chomp

# opens the web link and reads its content
json = URI.open("https://api.github.com/users/#{user_name}").read

# parse the json into rubu hash
user_hash = JSON.parse(json)

puts 'retrieving data...'
puts ''
sleep(1) # method stops the program for x seconds

puts "Welcome #{user_hash['name']}! You work for #{user_hash['company']}."
puts "You have #{user_hash['public_repos']} repositories, and #{user_hash['followers']} followers only."

# hash = {}
# students = ['richard', 'racheal', 'simone', 'joyce', 'chris']

# students.each_with_index do |student, index|
#   hash[student] = index  + 11
# end
# puts hash
