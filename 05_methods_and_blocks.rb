### Methods

# Methods
# Capitalizing a name

# Defining a method
# This capitalize_name method is defined with 2 PARAMETERS
def capitalize_name(first, last)
  cap_first = first.capitalize
  cap_last = last.capitalize

  return cap_first + " " + cap_last
end

puts 'What is your first name?'
first_name = gets.chomp

puts 'What is your last name?'
last_name = gets.chomp

# Call the method passing 2 ARGUMENTS
capitalized_name = capitalize_name(first_name, last_name)
puts capitalized_name

# Method Signature:
# - What is the name of the method?
# - How many paramaters (and what data type)
# - What does the method *return*

# Conventions
# name of the method: lower_snake_case
# method that ends with *?* returns true or false
# method that ends with *!* modifies the value it's called on




# Iterators
radiohead = ['Thom', 'Ed', 'Jonny']

# The most basic iterator .each

radiohead.each do |band_member|
  puts band_member
end

# .each_with_index
radiohead.each_with_index do |band_member, index|
  puts "#{index + 1}) #{band_member}"
end

# .map
# is called on a array, and returns an array of the same size

first_letters = radiohead.map do |band_member|
  band_member.chars.first.upcase
end

# .select
# Selecting elements based on a *condition*

start_with_t = radiohead.select do |band_member|
  band_member.chars.first == 'T'
end

p start_with_t

# Q&A

# Q1
# What data type can we use as keys?
# In theory, anything
# In practice, we use symbols (more on this later)


# Q2
# Selecting elements with even indexes

radiohead = ['Thom', 'Ed', 'Jonny', 'Colin', 'Phil']

selected_members = radiohead.select.with_index do |band_member, index|
  index.even?
end

p selected_members

# Q3
# p versus puts
# p is equivalent to puts foo.inspect

p ['Thom', 'Ed', 'Jonny', 'Colin', 'Phil']
puts ['Thom', 'Ed', 'Jonny', 'Colin', 'Phil'].inspect

# Q4
# Why do we use hashes?

radiohead = ['Thom Yorke', 'Colin Greenwood',  'Phil Selway', 'Jonny Greenwood']

radio_ages = [45, 46, 56, 47]

radiohead.each_with_index do |band_member, index|
  age = radio_ages[index]
  puts "#{band_member} is #{age} years old"
end

# In the above, we store related values in different arrays
# With a hash, we can store everything:

radiohead_hash = {
  'Thom' => 45,
  'Colin' => 46,
  'Phil' => 56
}

radiohead_hash.each do |name, age|
  puts "#{name} is #{age} years old"
end

# Q5
# Adding an element to an array
radiohead << 'Sylvain'




### Homework
# Good recap to:
# Define a method, Use iterators and conditionals

# The most popular coding challenge in the world (and interview question)
# FizzBuzz

# Define a method that takes one Integer and returns an array of all numbers between 1 and that Integer
# AND
# Replaces all multiple of 3 by 'Fizz'
# Replaces all multiple of 5 by 'Buzz'
# Replaces all multiple of 3 and 5 by 'FizzBuzz'




