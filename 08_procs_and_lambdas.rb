# *Blocks recap*
names = ['doug', 'sasha', 'sylvain', 'yann', 'trouni']

# block -> inside of a do...end
capitalized = names.each do |name|
  name.capitalize
end
# a block acts as an argument to a method
# blocks are essentially anonymous methods (block of code that returns a value)

# short-hand version
# names.each { |name| puts name }

# different iterators return different things

# .each => gives back the original array
# .map => builds a new array

capitalized = names.map do |name|
  name.capitalize
end

# two ways to combine strings
# Concatenation
# first_name + ' ' + last_name
# Interpolation

# *** Create a method to greet a user with their full_name ***
# you normally won't puts inside of a method, always RETURN

# ** Yield **
# calls the block (runs that anonymous method)
def greet_user(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  yield(full_name) # yield calls the block!
end

# greet_user('tim', 'chapin') do |full_name|
#   puts "Howdy #{full_name} 🇺🇸 👋"
# end

# greet_user('malene', 'thisgaard') do |full_name|
#   puts "Hej #{full_name} 🇩🇰 👋"
# end

# ⚠️ THIS IS AN ADVANCED TOPIC!!
# It's normal to struggle with this but to understand how blocks work

# Proc and a lamba are just ways of storing a block in a variable
proc_message = Proc.new do
  puts "hello!"
  puts "I'm inside of a proc!"
end

lambda_message = lambda do
  puts "hello!"
  puts "I'm inside of a lambda!"
end

numbers = (1..5).to_a
p numbers
# numbers.each do |number|
#   puts number if number.even?
# end
print_if_even = Proc.new do |number|
  puts number if number.even?
end
new_numbers = (10..50).to_a

numbers.each(&print_if_even)
new_numbers.each(&print_if_even)
