# Hash CRUD


### Hashes

# Also called dictionary (in Python for example)
# a dictionary-like collection of key / values
# each key is UNIQUE
# each key has a value that is associated to it
# keys are UNIQUE

# Let's write our first hash!

market = {
  'bananas' => 200,
  'avocados' => 300,
  'cherries' => 1000,
  'oranges' => 150
}

# 'bananas', 'avocados'... are keys of my market hash
# => is called the hash rocket
# 200, 300, 1000... are values
# keys and values can be of any Data Type
# In that specific case, keys are Strings and values are Integers

# Example 2
sylvain = { 'age' => 37, 'size' => 184 }

# =========

### CRUD for Hashes

# Create

# hash[key] = value
market['strawberries'] = 900

# Read

# Most of the time, we're interested in values stored
# hash[key] # => value
market['bananas'] # => 200
market['eggs'] # => nil

market.keys # => array of keys
market.values # => array of values

# Checking whether a key exists in my hash
market.key?('bananas') # => true / false

# Update

# Exactly the same syntax as for Create
# hash[key] = value
# This comes from the hash property that keys are unique
# If the key already exists => overwrites
# If the key doesn't exist => creates a new key / value pair

market['bananas'] = 700 # Updating the value for bananas


# Delete

# hash.delete(key)
market.delete('cherries')

# =========

### Symbols

# Symbol is a cousin to Strings
# Reserved for keywords

sylvain = { 'age' => 37, 'size' => 184 }
douglas = { 'age' => 35, 'size' => 175 }

# What's the information about Sylvain and Douglas?
# data is 37 and 184 for sylvain

# What is age and size?
# they are labels

# In Ruby, we prefer to use Strings for data only
# For labels, we use Symbols ⬇️

sylvain = { :age => 37, :size => 184 }
douglas = { :age => 35, :size => 175 }

# New syntax: Read the age
sylvain[:age] # => 37

# 🤯
# Since we use Symbols all the time with Hashes
# There is a 'sugary' way to write a hash:
sylvain = { age: 37, size: 184 }

# We still read with the normal syntax:
sylvain[:age]

# ========

### Iterators with Hashes

market = {
  'bananas' => 200,
  'avocados' => 300,
  'cherries' => 1000,
  'oranges' => 150
}

# .each

# .each do |key, value|

market.each do |fruit, price|
  puts "Today #{fruit} cost #{price}¥"
end

# .select

# I want to select items that are over 250 yens
expensive_items = market.select do |item, price|
  # condition to select stuffs
  price >= 250
end

# =========

### Livecode

# Let's build a small shopping app that works in the terminal

# 1) Welcome our shopper
# 2) Telling the shopper what we have in store
# 3) Asking shopper what they want to buy
# 4) Add that item to their cart *if* it is in the store
# 5) repeat *until* user says 'enough'


market = {
  'bananas' => 200,
  'avocados' => 300,
  'cherries' => 1000,
  'oranges' => 150
}

cart = {}
# keys will be the item, values will be the number that I bought

puts 'Welcome to our market!!'
puts '--------'
puts ''

puts 'Today in store:'
market.each do |item, price|
  puts "#{item}: ¥#{price}"
end
puts ''

choice = '' # Initializing the 'choice' variable
# Why do we do that? ⬇️
# On the next line, we reference 'choice'
# We tell Ruby, can you look into your memory, and see what 'choice' is
# If we do not initialize 'choice', Ruby has no idea what 'choice' is => returns an error
# Error: undefined variable or method 'choice'

until choice == 'done'
  puts 'What would you like to buy today? Type [done] to exit the store'
  choice = gets.chomp


  if market.key?(choice) # If it is available in the market
    # Add it to my cart
    # => Creating the key value pair in the cart
    cart[choice] = 1 # By default, we're adding 1 pack
  else
    # message to apologize ☹️
    puts 'Sorry, we do not have that in store' if choice != 'done'
  end
end

# Displaying the cart:
puts ''
puts 'In your cart:'
cart.each do |item, qty|
  puts "#{item} - #{qty} pack(s)"
end




####

# Q1 - Is a new key / value pair coming at the end of the hash?

# Yes, it goes at the end, BUT we don't care about the order


# Q2 - What is that { } syntax
expensive = market.select { |item, price| price >= 250 }
p expensive

# { } is a one-line block syntax
# If { } is less than 80 characters, we prefer that notation
# Mostly, depends on readability of your code


# Q3 - What is that lonely 'if' without 'end'??

# A 1-line if statement!
do_something if condition # will do_something if true

# Q4 - FizzBuzz correction

def fizz_buzz(integer)
  (1..integer).to_a.map do |num|
    if num % 3 == 0 && num % 5 == 0
      'fizzbuzz'
    elsif num % 3 == 0
      'fizz'
    elsif num % 5 == 0
      'buzz'
    else
      num
    end
  end
end

# Give the 'power' to the user to decide
# Calling
result_array = fizz_buzz(15)
p result_array

# 1) A method should not puts / print
# 2) By default, a method returns the last line executed
# 3) the most strict condition should come first

array.map # => returns the transformed array

# Q5 - does ruby know what 'qty' is??

cart = { 'bananas' => 1, 'eggs' => 1 }

cart.each do |item, qty|
  puts "#{item} - #{qty} pack(s)"
end

# qty is called a block parameter
# it is a placeholder, and we can choose any name we want

